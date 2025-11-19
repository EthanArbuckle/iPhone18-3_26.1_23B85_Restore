@interface CAPContactFillerContactEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTimeSinceLastContactViaIncomingCall:(id)a3;
- (int)StringAsTimeSinceLastContactViaIncomingText:(id)a3;
- (int)StringAsTimeSinceLastContactViaOutgoingCall:(id)a3;
- (int)StringAsTimeSinceLastContactViaOutgoingText:(id)a3;
- (int)StringAsTimeSinceLastContactViaShare:(id)a3;
- (int)timeSinceLastContactViaIncomingCall;
- (int)timeSinceLastContactViaOutgoingCall;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAverageBehavioralRuleConviction:(BOOL)a3;
- (void)setHasAverageBehavioralRuleLift:(BOOL)a3;
- (void)setHasAverageBehavioralRuleMLScore:(BOOL)a3;
- (void)setHasAverageBehavioralRulePowerFactor:(BOOL)a3;
- (void)setHasAverageBehavioralRuleSupport:(BOOL)a3;
- (void)setHasInteractionModelScore:(BOOL)a3;
- (void)setHasMaximumBehavioralRuleConfidence:(BOOL)a3;
- (void)setHasMaximumBehavioralRuleConviction:(BOOL)a3;
- (void)setHasMaximumBehavioralRuleLift:(BOOL)a3;
- (void)setHasMaximumBehavioralRuleMLScore:(BOOL)a3;
- (void)setHasMaximumBehavioralRulePowerFactor:(BOOL)a3;
- (void)setHasMaximumBehavioralRuleSupport:(BOOL)a3;
- (void)setHasMinimumBehavioralRuleConfidence:(BOOL)a3;
- (void)setHasMinimumBehavioralRuleConviction:(BOOL)a3;
- (void)setHasMinimumBehavioralRuleLift:(BOOL)a3;
- (void)setHasMinimumBehavioralRuleMLScore:(BOOL)a3;
- (void)setHasMinimumBehavioralRulePowerFactor:(BOOL)a3;
- (void)setHasMinimumBehavioralRuleSupport:(BOOL)a3;
- (void)setHasNormalizedIncomingCallFrequency:(BOOL)a3;
- (void)setHasNormalizedOutgoingCallFrequency:(BOOL)a3;
- (void)setHasNumberOfBehavioralRulesAdvocating:(BOOL)a3;
- (void)setHasStdevBehavioralRuleConfidence:(BOOL)a3;
- (void)setHasStdevBehavioralRuleConviction:(BOOL)a3;
- (void)setHasStdevBehavioralRuleLift:(BOOL)a3;
- (void)setHasStdevBehavioralRuleMLScore:(BOOL)a3;
- (void)setHasStdevBehavioralRulePowerFactor:(BOOL)a3;
- (void)setHasStdevBehavioralRuleSupport:(BOOL)a3;
- (void)setHasTimeSinceLastContactViaIncomingCall:(BOOL)a3;
- (void)setHasTimeSinceLastContactViaOutgoingCall:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAPContactFillerContactEvent

- (int)StringAsTimeSinceLastContactViaShare:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CFTIME_LESSTHAN2mins"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN5mins"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN10mins"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN30mins"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN1hr"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN2hrs"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN4hrs"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN6hrs"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN12hrs"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN24hrs"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CAPTIME_OTHER"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CAPTIME_UNKNOWN"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)StringAsTimeSinceLastContactViaIncomingText:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CFTIME_LESSTHAN2mins"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN5mins"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN10mins"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN30mins"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN1hr"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN2hrs"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN4hrs"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN6hrs"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN12hrs"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN24hrs"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CAPTIME_OTHER"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CAPTIME_UNKNOWN"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)StringAsTimeSinceLastContactViaOutgoingText:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CFTIME_LESSTHAN2mins"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN5mins"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN10mins"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN30mins"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN1hr"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN2hrs"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN4hrs"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN6hrs"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN12hrs"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN24hrs"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CAPTIME_OTHER"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CAPTIME_UNKNOWN"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)timeSinceLastContactViaIncomingCall
{
  if ((*(&self->_has + 3) & 0x10) != 0)
  {
    return self->_timeSinceLastContactViaIncomingCall;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTimeSinceLastContactViaIncomingCall:(BOOL)a3
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

- (int)StringAsTimeSinceLastContactViaIncomingCall:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CFTIME_LESSTHAN2mins"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN5mins"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN10mins"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN30mins"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN1hr"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN2hrs"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN4hrs"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN6hrs"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN12hrs"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN24hrs"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CAPTIME_OTHER"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CAPTIME_UNKNOWN"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)timeSinceLastContactViaOutgoingCall
{
  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    return self->_timeSinceLastContactViaOutgoingCall;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTimeSinceLastContactViaOutgoingCall:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xDFFFFFFF | v3);
}

- (int)StringAsTimeSinceLastContactViaOutgoingCall:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CFTIME_LESSTHAN2mins"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN5mins"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN10mins"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN30mins"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN1hr"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN2hrs"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN4hrs"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN6hrs"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN12hrs"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CFTIME_LESSTHAN24hrs"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CAPTIME_OTHER"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"CAPTIME_UNKNOWN"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasNormalizedIncomingCallFrequency:(BOOL)a3
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

- (void)setHasNormalizedOutgoingCallFrequency:(BOOL)a3
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

- (void)setHasNumberOfBehavioralRulesAdvocating:(BOOL)a3
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

- (void)setHasAverageBehavioralRuleSupport:(BOOL)a3
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

- (void)setHasAverageBehavioralRuleLift:(BOOL)a3
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

- (void)setHasAverageBehavioralRuleConviction:(BOOL)a3
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

- (void)setHasAverageBehavioralRulePowerFactor:(BOOL)a3
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

- (void)setHasAverageBehavioralRuleMLScore:(BOOL)a3
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

- (void)setHasMinimumBehavioralRuleSupport:(BOOL)a3
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

- (void)setHasMinimumBehavioralRuleConfidence:(BOOL)a3
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

- (void)setHasMinimumBehavioralRuleLift:(BOOL)a3
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

- (void)setHasMinimumBehavioralRuleConviction:(BOOL)a3
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

- (void)setHasMinimumBehavioralRulePowerFactor:(BOOL)a3
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

- (void)setHasMinimumBehavioralRuleMLScore:(BOOL)a3
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

- (void)setHasMaximumBehavioralRuleSupport:(BOOL)a3
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

- (void)setHasMaximumBehavioralRuleConfidence:(BOOL)a3
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

- (void)setHasMaximumBehavioralRuleLift:(BOOL)a3
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

- (void)setHasMaximumBehavioralRuleConviction:(BOOL)a3
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

- (void)setHasMaximumBehavioralRulePowerFactor:(BOOL)a3
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

- (void)setHasMaximumBehavioralRuleMLScore:(BOOL)a3
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

- (void)setHasStdevBehavioralRuleSupport:(BOOL)a3
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

- (void)setHasStdevBehavioralRuleConfidence:(BOOL)a3
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

- (void)setHasStdevBehavioralRuleLift:(BOOL)a3
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

- (void)setHasStdevBehavioralRuleConviction:(BOOL)a3
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

- (void)setHasStdevBehavioralRulePowerFactor:(BOOL)a3
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

- (void)setHasStdevBehavioralRuleMLScore:(BOOL)a3
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

- (void)setHasInteractionModelScore:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CAPContactFillerContactEvent;
  v4 = [(CAPContactFillerContactEvent *)&v8 description];
  v5 = [(CAPContactFillerContactEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeSinceLastContactViaShare = self->_timeSinceLastContactViaShare;
  if (timeSinceLastContactViaShare >= 0xC)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_timeSinceLastContactViaShare];
  }

  else
  {
    v5 = off_1E7C269F8[timeSinceLastContactViaShare];
  }

  [v3 setObject:v5 forKey:@"timeSinceLastContactViaShare"];

  timeSinceLastContactViaIncomingText = self->_timeSinceLastContactViaIncomingText;
  if (timeSinceLastContactViaIncomingText >= 0xC)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_timeSinceLastContactViaIncomingText];
  }

  else
  {
    v7 = off_1E7C269F8[timeSinceLastContactViaIncomingText];
  }

  [v3 setObject:v7 forKey:@"timeSinceLastContactViaIncomingText"];

  timeSinceLastContactViaOutgoingText = self->_timeSinceLastContactViaOutgoingText;
  if (timeSinceLastContactViaOutgoingText >= 0xC)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_timeSinceLastContactViaOutgoingText];
  }

  else
  {
    v9 = off_1E7C269F8[timeSinceLastContactViaOutgoingText];
  }

  [v3 setObject:v9 forKey:@"timeSinceLastContactViaOutgoingText"];

  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    timeSinceLastContactViaIncomingCall = self->_timeSinceLastContactViaIncomingCall;
    if (timeSinceLastContactViaIncomingCall >= 0xC)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_timeSinceLastContactViaIncomingCall];
    }

    else
    {
      v12 = off_1E7C269F8[timeSinceLastContactViaIncomingCall];
    }

    [v3 setObject:v12 forKey:@"timeSinceLastContactViaIncomingCall"];

    has = self->_has;
  }

  if ((*&has & 0x20000000) != 0)
  {
    timeSinceLastContactViaOutgoingCall = self->_timeSinceLastContactViaOutgoingCall;
    if (timeSinceLastContactViaOutgoingCall >= 0xC)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_timeSinceLastContactViaOutgoingCall];
    }

    else
    {
      v14 = off_1E7C269F8[timeSinceLastContactViaOutgoingCall];
    }

    [v3 setObject:v14 forKey:@"timeSinceLastContactViaOutgoingCall"];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_normalizedShareFrequency];
  [v3 setObject:v15 forKey:@"normalizedShareFrequency"];

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_normalizedIncomingTextFrequency];
  [v3 setObject:v16 forKey:@"normalizedIncomingTextFrequency"];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_normalizedOutgoingTextFrequency];
  [v3 setObject:v17 forKey:@"normalizedOutgoingTextFrequency"];

  v18 = self->_has;
  if ((*&v18 & 0x2000000) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_normalizedIncomingCallFrequency];
    [v3 setObject:v23 forKey:@"normalizedIncomingCallFrequency"];

    v18 = self->_has;
    if ((*&v18 & 0x4000000) == 0)
    {
LABEL_22:
      if ((*&v18 & 0x8000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v18 & 0x4000000) == 0)
  {
    goto LABEL_22;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_normalizedOutgoingCallFrequency];
  [v3 setObject:v24 forKey:@"normalizedOutgoingCallFrequency"];

  v18 = self->_has;
  if ((*&v18 & 0x8000000) == 0)
  {
LABEL_23:
    if ((*&v18 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numberOfBehavioralRulesAdvocating];
  [v3 setObject:v25 forKey:@"numberOfBehavioralRulesAdvocating"];

  v18 = self->_has;
  if ((*&v18 & 0x20) == 0)
  {
LABEL_24:
    if ((*&v18 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageBehavioralRuleSupport];
  [v3 setObject:v26 forKey:@"averageBehavioralRuleSupport"];

  v18 = self->_has;
  if ((*&v18 & 1) == 0)
  {
LABEL_25:
    if ((*&v18 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageBehavioralRuleConfidence];
  [v3 setObject:v27 forKey:@"averageBehavioralRuleConfidence"];

  v18 = self->_has;
  if ((*&v18 & 4) == 0)
  {
LABEL_26:
    if ((*&v18 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageBehavioralRuleLift];
  [v3 setObject:v28 forKey:@"averageBehavioralRuleLift"];

  v18 = self->_has;
  if ((*&v18 & 2) == 0)
  {
LABEL_27:
    if ((*&v18 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  v29 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageBehavioralRuleConviction];
  [v3 setObject:v29 forKey:@"averageBehavioralRuleConviction"];

  v18 = self->_has;
  if ((*&v18 & 0x10) == 0)
  {
LABEL_28:
    if ((*&v18 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  v30 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageBehavioralRulePowerFactor];
  [v3 setObject:v30 forKey:@"averageBehavioralRulePowerFactor"];

  v18 = self->_has;
  if ((*&v18 & 8) == 0)
  {
LABEL_29:
    if ((*&v18 & 0x40000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  v31 = [MEMORY[0x1E696AD98] numberWithDouble:self->_averageBehavioralRuleMLScore];
  [v3 setObject:v31 forKey:@"averageBehavioralRuleMLScore"];

  v18 = self->_has;
  if ((*&v18 & 0x40000) == 0)
  {
LABEL_30:
    if ((*&v18 & 0x2000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  v32 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumBehavioralRuleSupport];
  [v3 setObject:v32 forKey:@"minimumBehavioralRuleSupport"];

  v18 = self->_has;
  if ((*&v18 & 0x2000) == 0)
  {
LABEL_31:
    if ((*&v18 & 0x8000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_61;
  }

LABEL_60:
  v33 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumBehavioralRuleConfidence];
  [v3 setObject:v33 forKey:@"minimumBehavioralRuleConfidence"];

  v18 = self->_has;
  if ((*&v18 & 0x8000) == 0)
  {
LABEL_32:
    if ((*&v18 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_62;
  }

LABEL_61:
  v34 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumBehavioralRuleLift];
  [v3 setObject:v34 forKey:@"minimumBehavioralRuleLift"];

  v18 = self->_has;
  if ((*&v18 & 0x4000) == 0)
  {
LABEL_33:
    if ((*&v18 & 0x20000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_63;
  }

LABEL_62:
  v35 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumBehavioralRuleConviction];
  [v3 setObject:v35 forKey:@"minimumBehavioralRuleConviction"];

  v18 = self->_has;
  if ((*&v18 & 0x20000) == 0)
  {
LABEL_34:
    if ((*&v18 & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_64;
  }

LABEL_63:
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumBehavioralRulePowerFactor];
  [v3 setObject:v36 forKey:@"minimumBehavioralRulePowerFactor"];

  v18 = self->_has;
  if ((*&v18 & 0x10000) == 0)
  {
LABEL_35:
    if ((*&v18 & 0x1000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_65;
  }

LABEL_64:
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_minimumBehavioralRuleMLScore];
  [v3 setObject:v37 forKey:@"minimumBehavioralRuleMLScore"];

  v18 = self->_has;
  if ((*&v18 & 0x1000) == 0)
  {
LABEL_36:
    if ((*&v18 & 0x80) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_66;
  }

LABEL_65:
  v38 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumBehavioralRuleSupport];
  [v3 setObject:v38 forKey:@"maximumBehavioralRuleSupport"];

  v18 = self->_has;
  if ((*&v18 & 0x80) == 0)
  {
LABEL_37:
    if ((*&v18 & 0x200) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_67;
  }

LABEL_66:
  v39 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumBehavioralRuleConfidence];
  [v3 setObject:v39 forKey:@"maximumBehavioralRuleConfidence"];

  v18 = self->_has;
  if ((*&v18 & 0x200) == 0)
  {
LABEL_38:
    if ((*&v18 & 0x100) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_68;
  }

LABEL_67:
  v40 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumBehavioralRuleLift];
  [v3 setObject:v40 forKey:@"maximumBehavioralRuleLift"];

  v18 = self->_has;
  if ((*&v18 & 0x100) == 0)
  {
LABEL_39:
    if ((*&v18 & 0x800) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_69;
  }

LABEL_68:
  v41 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumBehavioralRuleConviction];
  [v3 setObject:v41 forKey:@"maximumBehavioralRuleConviction"];

  v18 = self->_has;
  if ((*&v18 & 0x800) == 0)
  {
LABEL_40:
    if ((*&v18 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_70;
  }

LABEL_69:
  v42 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumBehavioralRulePowerFactor];
  [v3 setObject:v42 forKey:@"maximumBehavioralRulePowerFactor"];

  v18 = self->_has;
  if ((*&v18 & 0x400) == 0)
  {
LABEL_41:
    if ((*&v18 & 0x1000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_71;
  }

LABEL_70:
  v43 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maximumBehavioralRuleMLScore];
  [v3 setObject:v43 forKey:@"maximumBehavioralRuleMLScore"];

  v18 = self->_has;
  if ((*&v18 & 0x1000000) == 0)
  {
LABEL_42:
    if ((*&v18 & 0x80000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

LABEL_71:
  v44 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stdevBehavioralRuleSupport];
  [v3 setObject:v44 forKey:@"stdevBehavioralRuleSupport"];

  v18 = self->_has;
  if ((*&v18 & 0x80000) == 0)
  {
LABEL_43:
    if ((*&v18 & 0x200000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_73;
  }

LABEL_72:
  v45 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stdevBehavioralRuleConfidence];
  [v3 setObject:v45 forKey:@"stdevBehavioralRuleConfidence"];

  v18 = self->_has;
  if ((*&v18 & 0x200000) == 0)
  {
LABEL_44:
    if ((*&v18 & 0x100000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_74;
  }

LABEL_73:
  v46 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stdevBehavioralRuleLift];
  [v3 setObject:v46 forKey:@"stdevBehavioralRuleLift"];

  v18 = self->_has;
  if ((*&v18 & 0x100000) == 0)
  {
LABEL_45:
    if ((*&v18 & 0x800000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_75;
  }

LABEL_74:
  v47 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stdevBehavioralRuleConviction];
  [v3 setObject:v47 forKey:@"stdevBehavioralRuleConviction"];

  v18 = self->_has;
  if ((*&v18 & 0x800000) == 0)
  {
LABEL_46:
    if ((*&v18 & 0x400000) == 0)
    {
      goto LABEL_47;
    }

LABEL_76:
    v49 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stdevBehavioralRuleMLScore];
    [v3 setObject:v49 forKey:@"stdevBehavioralRuleMLScore"];

    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

LABEL_75:
  v48 = [MEMORY[0x1E696AD98] numberWithDouble:self->_stdevBehavioralRulePowerFactor];
  [v3 setObject:v48 forKey:@"stdevBehavioralRulePowerFactor"];

  v18 = self->_has;
  if ((*&v18 & 0x400000) != 0)
  {
    goto LABEL_76;
  }

LABEL_47:
  if ((*&v18 & 0x40) != 0)
  {
LABEL_48:
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interactionModelScore];
    [v3 setObject:v19 forKey:@"interactionModelScore"];
  }

LABEL_49:
  v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_wasShareRecipient];
  [v3 setObject:v20 forKey:@"wasShareRecipient"];

  v21 = v3;
  return v3;
}

- (void)writeTo:(id)a3
{
  v43 = a3;
  timeSinceLastContactViaShare = self->_timeSinceLastContactViaShare;
  PBDataWriterWriteInt32Field();
  timeSinceLastContactViaIncomingText = self->_timeSinceLastContactViaIncomingText;
  PBDataWriterWriteInt32Field();
  timeSinceLastContactViaOutgoingText = self->_timeSinceLastContactViaOutgoingText;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    timeSinceLastContactViaIncomingCall = self->_timeSinceLastContactViaIncomingCall;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((*&has & 0x20000000) != 0)
  {
    timeSinceLastContactViaOutgoingCall = self->_timeSinceLastContactViaOutgoingCall;
    PBDataWriterWriteInt32Field();
  }

  normalizedShareFrequency = self->_normalizedShareFrequency;
  PBDataWriterWriteUint32Field();
  normalizedIncomingTextFrequency = self->_normalizedIncomingTextFrequency;
  PBDataWriterWriteUint32Field();
  normalizedOutgoingTextFrequency = self->_normalizedOutgoingTextFrequency;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x2000000) != 0)
  {
    normalizedIncomingCallFrequency = self->_normalizedIncomingCallFrequency;
    PBDataWriterWriteUint32Field();
    v13 = self->_has;
    if ((*&v13 & 0x4000000) == 0)
    {
LABEL_7:
      if ((*&v13 & 0x8000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_39;
    }
  }

  else if ((*&v13 & 0x4000000) == 0)
  {
    goto LABEL_7;
  }

  normalizedOutgoingCallFrequency = self->_normalizedOutgoingCallFrequency;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x8000000) == 0)
  {
LABEL_8:
    if ((*&v13 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  numberOfBehavioralRulesAdvocating = self->_numberOfBehavioralRulesAdvocating;
  PBDataWriterWriteUint32Field();
  v13 = self->_has;
  if ((*&v13 & 0x20) == 0)
  {
LABEL_9:
    if ((*&v13 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  averageBehavioralRuleSupport = self->_averageBehavioralRuleSupport;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 1) == 0)
  {
LABEL_10:
    if ((*&v13 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  averageBehavioralRuleConfidence = self->_averageBehavioralRuleConfidence;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 4) == 0)
  {
LABEL_11:
    if ((*&v13 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  averageBehavioralRuleLift = self->_averageBehavioralRuleLift;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 2) == 0)
  {
LABEL_12:
    if ((*&v13 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  averageBehavioralRuleConviction = self->_averageBehavioralRuleConviction;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x10) == 0)
  {
LABEL_13:
    if ((*&v13 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  averageBehavioralRulePowerFactor = self->_averageBehavioralRulePowerFactor;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 8) == 0)
  {
LABEL_14:
    if ((*&v13 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  averageBehavioralRuleMLScore = self->_averageBehavioralRuleMLScore;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x40000) == 0)
  {
LABEL_15:
    if ((*&v13 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  minimumBehavioralRuleSupport = self->_minimumBehavioralRuleSupport;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x2000) == 0)
  {
LABEL_16:
    if ((*&v13 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  minimumBehavioralRuleConfidence = self->_minimumBehavioralRuleConfidence;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x8000) == 0)
  {
LABEL_17:
    if ((*&v13 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  minimumBehavioralRuleLift = self->_minimumBehavioralRuleLift;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
LABEL_18:
    if ((*&v13 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  minimumBehavioralRuleConviction = self->_minimumBehavioralRuleConviction;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x20000) == 0)
  {
LABEL_19:
    if ((*&v13 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  minimumBehavioralRulePowerFactor = self->_minimumBehavioralRulePowerFactor;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v13 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  minimumBehavioralRuleMLScore = self->_minimumBehavioralRuleMLScore;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x1000) == 0)
  {
LABEL_21:
    if ((*&v13 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  maximumBehavioralRuleSupport = self->_maximumBehavioralRuleSupport;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v13 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  maximumBehavioralRuleConfidence = self->_maximumBehavioralRuleConfidence;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x200) == 0)
  {
LABEL_23:
    if ((*&v13 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_55;
  }

LABEL_54:
  maximumBehavioralRuleLift = self->_maximumBehavioralRuleLift;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v13 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_56;
  }

LABEL_55:
  maximumBehavioralRuleConviction = self->_maximumBehavioralRuleConviction;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x800) == 0)
  {
LABEL_25:
    if ((*&v13 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_57;
  }

LABEL_56:
  maximumBehavioralRulePowerFactor = self->_maximumBehavioralRulePowerFactor;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x400) == 0)
  {
LABEL_26:
    if ((*&v13 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_58;
  }

LABEL_57:
  maximumBehavioralRuleMLScore = self->_maximumBehavioralRuleMLScore;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x1000000) == 0)
  {
LABEL_27:
    if ((*&v13 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  stdevBehavioralRuleSupport = self->_stdevBehavioralRuleSupport;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x80000) == 0)
  {
LABEL_28:
    if ((*&v13 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_60;
  }

LABEL_59:
  stdevBehavioralRuleConfidence = self->_stdevBehavioralRuleConfidence;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x200000) == 0)
  {
LABEL_29:
    if ((*&v13 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_60:
  stdevBehavioralRuleLift = self->_stdevBehavioralRuleLift;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x100000) == 0)
  {
LABEL_30:
    if ((*&v13 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_62;
  }

LABEL_61:
  stdevBehavioralRuleConviction = self->_stdevBehavioralRuleConviction;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x800000) == 0)
  {
LABEL_31:
    if ((*&v13 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_63;
  }

LABEL_62:
  stdevBehavioralRulePowerFactor = self->_stdevBehavioralRulePowerFactor;
  PBDataWriterWriteDoubleField();
  v13 = self->_has;
  if ((*&v13 & 0x400000) == 0)
  {
LABEL_32:
    if ((*&v13 & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_63:
  stdevBehavioralRuleMLScore = self->_stdevBehavioralRuleMLScore;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_33:
    interactionModelScore = self->_interactionModelScore;
    PBDataWriterWriteDoubleField();
  }

LABEL_34:
  wasShareRecipient = self->_wasShareRecipient;
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 62) = self->_timeSinceLastContactViaShare;
  *(a3 + 59) = self->_timeSinceLastContactViaIncomingText;
  *(a3 + 61) = self->_timeSinceLastContactViaOutgoingText;
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    *(a3 + 58) = self->_timeSinceLastContactViaIncomingCall;
    *(a3 + 64) |= 0x10000000u;
    has = self->_has;
  }

  if ((*&has & 0x20000000) != 0)
  {
    *(a3 + 60) = self->_timeSinceLastContactViaOutgoingCall;
    *(a3 + 64) |= 0x20000000u;
  }

  *(a3 + 56) = self->_normalizedShareFrequency;
  *(a3 + 53) = self->_normalizedIncomingTextFrequency;
  *(a3 + 55) = self->_normalizedOutgoingTextFrequency;
  v4 = self->_has;
  if ((*&v4 & 0x2000000) != 0)
  {
    *(a3 + 52) = self->_normalizedIncomingCallFrequency;
    *(a3 + 64) |= 0x2000000u;
    v4 = self->_has;
    if ((*&v4 & 0x4000000) == 0)
    {
LABEL_7:
      if ((*&v4 & 0x8000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }
  }

  else if ((*&v4 & 0x4000000) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 54) = self->_normalizedOutgoingCallFrequency;
  *(a3 + 64) |= 0x4000000u;
  v4 = self->_has;
  if ((*&v4 & 0x8000000) == 0)
  {
LABEL_8:
    if ((*&v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 57) = self->_numberOfBehavioralRulesAdvocating;
  *(a3 + 64) |= 0x8000000u;
  v4 = self->_has;
  if ((*&v4 & 0x20) == 0)
  {
LABEL_9:
    if ((*&v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 6) = *&self->_averageBehavioralRuleSupport;
  *(a3 + 64) |= 0x20u;
  v4 = self->_has;
  if ((*&v4 & 1) == 0)
  {
LABEL_10:
    if ((*&v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 1) = *&self->_averageBehavioralRuleConfidence;
  *(a3 + 64) |= 1u;
  v4 = self->_has;
  if ((*&v4 & 4) == 0)
  {
LABEL_11:
    if ((*&v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 3) = *&self->_averageBehavioralRuleLift;
  *(a3 + 64) |= 4u;
  v4 = self->_has;
  if ((*&v4 & 2) == 0)
  {
LABEL_12:
    if ((*&v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 2) = *&self->_averageBehavioralRuleConviction;
  *(a3 + 64) |= 2u;
  v4 = self->_has;
  if ((*&v4 & 0x10) == 0)
  {
LABEL_13:
    if ((*&v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 5) = *&self->_averageBehavioralRulePowerFactor;
  *(a3 + 64) |= 0x10u;
  v4 = self->_has;
  if ((*&v4 & 8) == 0)
  {
LABEL_14:
    if ((*&v4 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 4) = *&self->_averageBehavioralRuleMLScore;
  *(a3 + 64) |= 8u;
  v4 = self->_has;
  if ((*&v4 & 0x40000) == 0)
  {
LABEL_15:
    if ((*&v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 19) = *&self->_minimumBehavioralRuleSupport;
  *(a3 + 64) |= 0x40000u;
  v4 = self->_has;
  if ((*&v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((*&v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 14) = *&self->_minimumBehavioralRuleConfidence;
  *(a3 + 64) |= 0x2000u;
  v4 = self->_has;
  if ((*&v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((*&v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 16) = *&self->_minimumBehavioralRuleLift;
  *(a3 + 64) |= 0x8000u;
  v4 = self->_has;
  if ((*&v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((*&v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 15) = *&self->_minimumBehavioralRuleConviction;
  *(a3 + 64) |= 0x4000u;
  v4 = self->_has;
  if ((*&v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((*&v4 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 18) = *&self->_minimumBehavioralRulePowerFactor;
  *(a3 + 64) |= 0x20000u;
  v4 = self->_has;
  if ((*&v4 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v4 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 17) = *&self->_minimumBehavioralRuleMLScore;
  *(a3 + 64) |= 0x10000u;
  v4 = self->_has;
  if ((*&v4 & 0x1000) == 0)
  {
LABEL_21:
    if ((*&v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 13) = *&self->_maximumBehavioralRuleSupport;
  *(a3 + 64) |= 0x1000u;
  v4 = self->_has;
  if ((*&v4 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v4 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 8) = *&self->_maximumBehavioralRuleConfidence;
  *(a3 + 64) |= 0x80u;
  v4 = self->_has;
  if ((*&v4 & 0x200) == 0)
  {
LABEL_23:
    if ((*&v4 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 10) = *&self->_maximumBehavioralRuleLift;
  *(a3 + 64) |= 0x200u;
  v4 = self->_has;
  if ((*&v4 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v4 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 9) = *&self->_maximumBehavioralRuleConviction;
  *(a3 + 64) |= 0x100u;
  v4 = self->_has;
  if ((*&v4 & 0x800) == 0)
  {
LABEL_25:
    if ((*&v4 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 12) = *&self->_maximumBehavioralRulePowerFactor;
  *(a3 + 64) |= 0x800u;
  v4 = self->_has;
  if ((*&v4 & 0x400) == 0)
  {
LABEL_26:
    if ((*&v4 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 11) = *&self->_maximumBehavioralRuleMLScore;
  *(a3 + 64) |= 0x400u;
  v4 = self->_has;
  if ((*&v4 & 0x1000000) == 0)
  {
LABEL_27:
    if ((*&v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 25) = *&self->_stdevBehavioralRuleSupport;
  *(a3 + 64) |= 0x1000000u;
  v4 = self->_has;
  if ((*&v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((*&v4 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 20) = *&self->_stdevBehavioralRuleConfidence;
  *(a3 + 64) |= 0x80000u;
  v4 = self->_has;
  if ((*&v4 & 0x200000) == 0)
  {
LABEL_29:
    if ((*&v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 22) = *&self->_stdevBehavioralRuleLift;
  *(a3 + 64) |= 0x200000u;
  v4 = self->_has;
  if ((*&v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((*&v4 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 21) = *&self->_stdevBehavioralRuleConviction;
  *(a3 + 64) |= 0x100000u;
  v4 = self->_has;
  if ((*&v4 & 0x800000) == 0)
  {
LABEL_31:
    if ((*&v4 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

LABEL_61:
    *(a3 + 23) = *&self->_stdevBehavioralRuleMLScore;
    *(a3 + 64) |= 0x400000u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_60:
  *(a3 + 24) = *&self->_stdevBehavioralRulePowerFactor;
  *(a3 + 64) |= 0x800000u;
  v4 = self->_has;
  if ((*&v4 & 0x400000) != 0)
  {
    goto LABEL_61;
  }

LABEL_32:
  if ((*&v4 & 0x40) != 0)
  {
LABEL_33:
    *(a3 + 7) = *&self->_interactionModelScore;
    *(a3 + 64) |= 0x40u;
  }

LABEL_34:
  *(a3 + 252) = self->_wasShareRecipient;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 62) = self->_timeSinceLastContactViaShare;
  *(result + 59) = self->_timeSinceLastContactViaIncomingText;
  *(result + 61) = self->_timeSinceLastContactViaOutgoingText;
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    *(result + 58) = self->_timeSinceLastContactViaIncomingCall;
    *(result + 64) |= 0x10000000u;
    has = self->_has;
  }

  if ((*&has & 0x20000000) != 0)
  {
    *(result + 60) = self->_timeSinceLastContactViaOutgoingCall;
    *(result + 64) |= 0x20000000u;
  }

  *(result + 56) = self->_normalizedShareFrequency;
  *(result + 53) = self->_normalizedIncomingTextFrequency;
  *(result + 55) = self->_normalizedOutgoingTextFrequency;
  v6 = self->_has;
  if ((*&v6 & 0x2000000) != 0)
  {
    *(result + 52) = self->_normalizedIncomingCallFrequency;
    *(result + 64) |= 0x2000000u;
    v6 = self->_has;
    if ((*&v6 & 0x4000000) == 0)
    {
LABEL_7:
      if ((*&v6 & 0x8000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }
  }

  else if ((*&v6 & 0x4000000) == 0)
  {
    goto LABEL_7;
  }

  *(result + 54) = self->_normalizedOutgoingCallFrequency;
  *(result + 64) |= 0x4000000u;
  v6 = self->_has;
  if ((*&v6 & 0x8000000) == 0)
  {
LABEL_8:
    if ((*&v6 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 57) = self->_numberOfBehavioralRulesAdvocating;
  *(result + 64) |= 0x8000000u;
  v6 = self->_has;
  if ((*&v6 & 0x20) == 0)
  {
LABEL_9:
    if ((*&v6 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 6) = *&self->_averageBehavioralRuleSupport;
  *(result + 64) |= 0x20u;
  v6 = self->_has;
  if ((*&v6 & 1) == 0)
  {
LABEL_10:
    if ((*&v6 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 1) = *&self->_averageBehavioralRuleConfidence;
  *(result + 64) |= 1u;
  v6 = self->_has;
  if ((*&v6 & 4) == 0)
  {
LABEL_11:
    if ((*&v6 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 3) = *&self->_averageBehavioralRuleLift;
  *(result + 64) |= 4u;
  v6 = self->_has;
  if ((*&v6 & 2) == 0)
  {
LABEL_12:
    if ((*&v6 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(result + 2) = *&self->_averageBehavioralRuleConviction;
  *(result + 64) |= 2u;
  v6 = self->_has;
  if ((*&v6 & 0x10) == 0)
  {
LABEL_13:
    if ((*&v6 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(result + 5) = *&self->_averageBehavioralRulePowerFactor;
  *(result + 64) |= 0x10u;
  v6 = self->_has;
  if ((*&v6 & 8) == 0)
  {
LABEL_14:
    if ((*&v6 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(result + 4) = *&self->_averageBehavioralRuleMLScore;
  *(result + 64) |= 8u;
  v6 = self->_has;
  if ((*&v6 & 0x40000) == 0)
  {
LABEL_15:
    if ((*&v6 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(result + 19) = *&self->_minimumBehavioralRuleSupport;
  *(result + 64) |= 0x40000u;
  v6 = self->_has;
  if ((*&v6 & 0x2000) == 0)
  {
LABEL_16:
    if ((*&v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 14) = *&self->_minimumBehavioralRuleConfidence;
  *(result + 64) |= 0x2000u;
  v6 = self->_has;
  if ((*&v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((*&v6 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 16) = *&self->_minimumBehavioralRuleLift;
  *(result + 64) |= 0x8000u;
  v6 = self->_has;
  if ((*&v6 & 0x4000) == 0)
  {
LABEL_18:
    if ((*&v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 15) = *&self->_minimumBehavioralRuleConviction;
  *(result + 64) |= 0x4000u;
  v6 = self->_has;
  if ((*&v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((*&v6 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 18) = *&self->_minimumBehavioralRulePowerFactor;
  *(result + 64) |= 0x20000u;
  v6 = self->_has;
  if ((*&v6 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v6 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 17) = *&self->_minimumBehavioralRuleMLScore;
  *(result + 64) |= 0x10000u;
  v6 = self->_has;
  if ((*&v6 & 0x1000) == 0)
  {
LABEL_21:
    if ((*&v6 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 13) = *&self->_maximumBehavioralRuleSupport;
  *(result + 64) |= 0x1000u;
  v6 = self->_has;
  if ((*&v6 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v6 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 8) = *&self->_maximumBehavioralRuleConfidence;
  *(result + 64) |= 0x80u;
  v6 = self->_has;
  if ((*&v6 & 0x200) == 0)
  {
LABEL_23:
    if ((*&v6 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 10) = *&self->_maximumBehavioralRuleLift;
  *(result + 64) |= 0x200u;
  v6 = self->_has;
  if ((*&v6 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v6 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 9) = *&self->_maximumBehavioralRuleConviction;
  *(result + 64) |= 0x100u;
  v6 = self->_has;
  if ((*&v6 & 0x800) == 0)
  {
LABEL_25:
    if ((*&v6 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 12) = *&self->_maximumBehavioralRulePowerFactor;
  *(result + 64) |= 0x800u;
  v6 = self->_has;
  if ((*&v6 & 0x400) == 0)
  {
LABEL_26:
    if ((*&v6 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 11) = *&self->_maximumBehavioralRuleMLScore;
  *(result + 64) |= 0x400u;
  v6 = self->_has;
  if ((*&v6 & 0x1000000) == 0)
  {
LABEL_27:
    if ((*&v6 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 25) = *&self->_stdevBehavioralRuleSupport;
  *(result + 64) |= 0x1000000u;
  v6 = self->_has;
  if ((*&v6 & 0x80000) == 0)
  {
LABEL_28:
    if ((*&v6 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 20) = *&self->_stdevBehavioralRuleConfidence;
  *(result + 64) |= 0x80000u;
  v6 = self->_has;
  if ((*&v6 & 0x200000) == 0)
  {
LABEL_29:
    if ((*&v6 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 22) = *&self->_stdevBehavioralRuleLift;
  *(result + 64) |= 0x200000u;
  v6 = self->_has;
  if ((*&v6 & 0x100000) == 0)
  {
LABEL_30:
    if ((*&v6 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 21) = *&self->_stdevBehavioralRuleConviction;
  *(result + 64) |= 0x100000u;
  v6 = self->_has;
  if ((*&v6 & 0x800000) == 0)
  {
LABEL_31:
    if ((*&v6 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

LABEL_61:
    *(result + 23) = *&self->_stdevBehavioralRuleMLScore;
    *(result + 64) |= 0x400000u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_60:
  *(result + 24) = *&self->_stdevBehavioralRulePowerFactor;
  *(result + 64) |= 0x800000u;
  v6 = self->_has;
  if ((*&v6 & 0x400000) != 0)
  {
    goto LABEL_61;
  }

LABEL_32:
  if ((*&v6 & 0x40) != 0)
  {
LABEL_33:
    *(result + 7) = *&self->_interactionModelScore;
    *(result + 64) |= 0x40u;
  }

LABEL_34:
  *(result + 252) = self->_wasShareRecipient;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_timeSinceLastContactViaShare != *(v4 + 62) || self->_timeSinceLastContactViaIncomingText != *(v4 + 59) || self->_timeSinceLastContactViaOutgoingText != *(v4 + 61))
  {
    goto LABEL_159;
  }

  has = self->_has;
  v6 = *(v4 + 64);
  if ((*&has & 0x10000000) != 0)
  {
    if ((v6 & 0x10000000) == 0 || self->_timeSinceLastContactViaIncomingCall != *(v4 + 58))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x10000000) != 0)
  {
LABEL_159:
    v7 = 0;
    goto LABEL_160;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v6 & 0x20000000) == 0 || self->_timeSinceLastContactViaOutgoingCall != *(v4 + 60))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x20000000) != 0)
  {
    goto LABEL_159;
  }

  if (self->_normalizedShareFrequency != *(v4 + 56) || self->_normalizedIncomingTextFrequency != *(v4 + 53) || self->_normalizedOutgoingTextFrequency != *(v4 + 55))
  {
    goto LABEL_159;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v6 & 0x2000000) == 0 || self->_normalizedIncomingCallFrequency != *(v4 + 52))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x2000000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v6 & 0x4000000) == 0 || self->_normalizedOutgoingCallFrequency != *(v4 + 54))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x4000000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v6 & 0x8000000) == 0 || self->_numberOfBehavioralRulesAdvocating != *(v4 + 57))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x8000000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_averageBehavioralRuleSupport != *(v4 + 6))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_159;
  }

  if (*&has)
  {
    if ((v6 & 1) == 0 || self->_averageBehavioralRuleConfidence != *(v4 + 1))
    {
      goto LABEL_159;
    }
  }

  else if (v6)
  {
    goto LABEL_159;
  }

  if ((*&has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_averageBehavioralRuleLift != *(v4 + 3))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_averageBehavioralRuleConviction != *(v4 + 2))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_averageBehavioralRulePowerFactor != *(v4 + 5))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_averageBehavioralRuleMLScore != *(v4 + 4))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v6 & 0x40000) == 0 || self->_minimumBehavioralRuleSupport != *(v4 + 19))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x40000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v6 & 0x2000) == 0 || self->_minimumBehavioralRuleConfidence != *(v4 + 14))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x2000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v6 & 0x8000) == 0 || self->_minimumBehavioralRuleLift != *(v4 + 16))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x8000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v6 & 0x4000) == 0 || self->_minimumBehavioralRuleConviction != *(v4 + 15))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x4000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v6 & 0x20000) == 0 || self->_minimumBehavioralRulePowerFactor != *(v4 + 18))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x20000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v6 & 0x10000) == 0 || self->_minimumBehavioralRuleMLScore != *(v4 + 17))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x10000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v6 & 0x1000) == 0 || self->_maximumBehavioralRuleSupport != *(v4 + 13))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x1000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_maximumBehavioralRuleConfidence != *(v4 + 8))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v6 & 0x200) == 0 || self->_maximumBehavioralRuleLift != *(v4 + 10))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x200) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v6 & 0x100) == 0 || self->_maximumBehavioralRuleConviction != *(v4 + 9))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x100) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v6 & 0x800) == 0 || self->_maximumBehavioralRulePowerFactor != *(v4 + 12))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x800) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v6 & 0x400) == 0 || self->_maximumBehavioralRuleMLScore != *(v4 + 11))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x400) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v6 & 0x1000000) == 0 || self->_stdevBehavioralRuleSupport != *(v4 + 25))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x1000000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v6 & 0x80000) == 0 || self->_stdevBehavioralRuleConfidence != *(v4 + 20))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x80000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v6 & 0x200000) == 0 || self->_stdevBehavioralRuleLift != *(v4 + 22))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x200000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v6 & 0x100000) == 0 || self->_stdevBehavioralRuleConviction != *(v4 + 21))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x100000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v6 & 0x800000) == 0 || self->_stdevBehavioralRulePowerFactor != *(v4 + 24))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x800000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v6 & 0x400000) == 0 || self->_stdevBehavioralRuleMLScore != *(v4 + 23))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x400000) != 0)
  {
    goto LABEL_159;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_interactionModelScore != *(v4 + 7))
    {
      goto LABEL_159;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_159;
  }

  v7 = self->_wasShareRecipient == v4[252];
LABEL_160:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x10000000) != 0)
  {
    v123 = 2654435761 * self->_timeSinceLastContactViaIncomingCall;
    if ((*&has & 0x20000000) != 0)
    {
LABEL_3:
      v122 = 2654435761 * self->_timeSinceLastContactViaOutgoingCall;
      if ((*&has & 0x2000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v123 = 0;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v122 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_4:
    v121 = 2654435761 * self->_normalizedIncomingCallFrequency;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v121 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_5:
    v120 = 2654435761 * self->_normalizedOutgoingCallFrequency;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_6;
    }

LABEL_15:
    v119 = 0;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

LABEL_14:
  v120 = 0;
  if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_15;
  }

LABEL_6:
  v119 = 2654435761 * self->_numberOfBehavioralRulesAdvocating;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  averageBehavioralRuleSupport = self->_averageBehavioralRuleSupport;
  if (averageBehavioralRuleSupport < 0.0)
  {
    averageBehavioralRuleSupport = -averageBehavioralRuleSupport;
  }

  *v2.i64 = floor(averageBehavioralRuleSupport + 0.5);
  v6 = (averageBehavioralRuleSupport - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v8 = 2654435761u * *v2.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v8 += v6;
    }
  }

  else
  {
    v8 -= fabs(v6);
  }

LABEL_17:
  if (*&has)
  {
    averageBehavioralRuleConfidence = self->_averageBehavioralRuleConfidence;
    if (averageBehavioralRuleConfidence < 0.0)
    {
      averageBehavioralRuleConfidence = -averageBehavioralRuleConfidence;
    }

    *v2.i64 = floor(averageBehavioralRuleConfidence + 0.5);
    v11 = (averageBehavioralRuleConfidence - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v12), v3, v2);
    v9 = 2654435761u * *v2.i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*&has & 4) != 0)
  {
    averageBehavioralRuleLift = self->_averageBehavioralRuleLift;
    if (averageBehavioralRuleLift < 0.0)
    {
      averageBehavioralRuleLift = -averageBehavioralRuleLift;
    }

    *v2.i64 = floor(averageBehavioralRuleLift + 0.5);
    v15 = (averageBehavioralRuleLift - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v16), v3, v2);
    v13 = 2654435761u * *v2.i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&has & 2) != 0)
  {
    averageBehavioralRuleConviction = self->_averageBehavioralRuleConviction;
    if (averageBehavioralRuleConviction < 0.0)
    {
      averageBehavioralRuleConviction = -averageBehavioralRuleConviction;
    }

    *v2.i64 = floor(averageBehavioralRuleConviction + 0.5);
    v19 = (averageBehavioralRuleConviction - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v20.f64[0] = NAN;
    v20.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v20), v3, v2);
    v17 = 2654435761u * *v2.i64;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabs(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((*&has & 0x10) != 0)
  {
    averageBehavioralRulePowerFactor = self->_averageBehavioralRulePowerFactor;
    if (averageBehavioralRulePowerFactor < 0.0)
    {
      averageBehavioralRulePowerFactor = -averageBehavioralRulePowerFactor;
    }

    *v2.i64 = floor(averageBehavioralRulePowerFactor + 0.5);
    v23 = (averageBehavioralRulePowerFactor - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v24.f64[0] = NAN;
    v24.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v24), v3, v2);
    v21 = 2654435761u * *v2.i64;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabs(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((*&has & 8) != 0)
  {
    averageBehavioralRuleMLScore = self->_averageBehavioralRuleMLScore;
    if (averageBehavioralRuleMLScore < 0.0)
    {
      averageBehavioralRuleMLScore = -averageBehavioralRuleMLScore;
    }

    *v2.i64 = floor(averageBehavioralRuleMLScore + 0.5);
    v27 = (averageBehavioralRuleMLScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v28.f64[0] = NAN;
    v28.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v28), v3, v2);
    v25 = 2654435761u * *v2.i64;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabs(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((*&has & 0x40000) != 0)
  {
    minimumBehavioralRuleSupport = self->_minimumBehavioralRuleSupport;
    if (minimumBehavioralRuleSupport < 0.0)
    {
      minimumBehavioralRuleSupport = -minimumBehavioralRuleSupport;
    }

    *v2.i64 = floor(minimumBehavioralRuleSupport + 0.5);
    v31 = (minimumBehavioralRuleSupport - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v32), v3, v2);
    v29 = 2654435761u * *v2.i64;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabs(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((*&has & 0x2000) != 0)
  {
    minimumBehavioralRuleConfidence = self->_minimumBehavioralRuleConfidence;
    if (minimumBehavioralRuleConfidence < 0.0)
    {
      minimumBehavioralRuleConfidence = -minimumBehavioralRuleConfidence;
    }

    *v2.i64 = floor(minimumBehavioralRuleConfidence + 0.5);
    v35 = (minimumBehavioralRuleConfidence - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v36.f64[0] = NAN;
    v36.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v36), v3, v2);
    v33 = 2654435761u * *v2.i64;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabs(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((*&has & 0x8000) != 0)
  {
    minimumBehavioralRuleLift = self->_minimumBehavioralRuleLift;
    if (minimumBehavioralRuleLift < 0.0)
    {
      minimumBehavioralRuleLift = -minimumBehavioralRuleLift;
    }

    *v2.i64 = floor(minimumBehavioralRuleLift + 0.5);
    v39 = (minimumBehavioralRuleLift - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v40), v3, v2);
    v37 = 2654435761u * *v2.i64;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabs(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  if ((*&has & 0x4000) != 0)
  {
    minimumBehavioralRuleConviction = self->_minimumBehavioralRuleConviction;
    if (minimumBehavioralRuleConviction < 0.0)
    {
      minimumBehavioralRuleConviction = -minimumBehavioralRuleConviction;
    }

    *v2.i64 = floor(minimumBehavioralRuleConviction + 0.5);
    v43 = (minimumBehavioralRuleConviction - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v44.f64[0] = NAN;
    v44.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v44), v3, v2);
    v41 = 2654435761u * *v2.i64;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v41 += v43;
      }
    }

    else
    {
      v41 -= fabs(v43);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((*&has & 0x20000) != 0)
  {
    minimumBehavioralRulePowerFactor = self->_minimumBehavioralRulePowerFactor;
    if (minimumBehavioralRulePowerFactor < 0.0)
    {
      minimumBehavioralRulePowerFactor = -minimumBehavioralRulePowerFactor;
    }

    *v2.i64 = floor(minimumBehavioralRulePowerFactor + 0.5);
    v47 = (minimumBehavioralRulePowerFactor - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v48.f64[0] = NAN;
    v48.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v48), v3, v2);
    v45 = 2654435761u * *v2.i64;
    if (v47 >= 0.0)
    {
      if (v47 > 0.0)
      {
        v45 += v47;
      }
    }

    else
    {
      v45 -= fabs(v47);
    }
  }

  else
  {
    v45 = 0;
  }

  if ((*&has & 0x10000) != 0)
  {
    minimumBehavioralRuleMLScore = self->_minimumBehavioralRuleMLScore;
    if (minimumBehavioralRuleMLScore < 0.0)
    {
      minimumBehavioralRuleMLScore = -minimumBehavioralRuleMLScore;
    }

    *v2.i64 = floor(minimumBehavioralRuleMLScore + 0.5);
    v51 = (minimumBehavioralRuleMLScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v52.f64[0] = NAN;
    v52.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v52), v3, v2);
    v49 = 2654435761u * *v2.i64;
    if (v51 >= 0.0)
    {
      if (v51 > 0.0)
      {
        v49 += v51;
      }
    }

    else
    {
      v49 -= fabs(v51);
    }
  }

  else
  {
    v49 = 0;
  }

  if ((*&has & 0x1000) != 0)
  {
    maximumBehavioralRuleSupport = self->_maximumBehavioralRuleSupport;
    if (maximumBehavioralRuleSupport < 0.0)
    {
      maximumBehavioralRuleSupport = -maximumBehavioralRuleSupport;
    }

    *v2.i64 = floor(maximumBehavioralRuleSupport + 0.5);
    v55 = (maximumBehavioralRuleSupport - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v56), v3, v2);
    v53 = 2654435761u * *v2.i64;
    if (v55 >= 0.0)
    {
      if (v55 > 0.0)
      {
        v53 += v55;
      }
    }

    else
    {
      v53 -= fabs(v55);
    }
  }

  else
  {
    v53 = 0;
  }

  if ((*&has & 0x80) != 0)
  {
    maximumBehavioralRuleConfidence = self->_maximumBehavioralRuleConfidence;
    if (maximumBehavioralRuleConfidence < 0.0)
    {
      maximumBehavioralRuleConfidence = -maximumBehavioralRuleConfidence;
    }

    *v2.i64 = floor(maximumBehavioralRuleConfidence + 0.5);
    v59 = (maximumBehavioralRuleConfidence - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v60.f64[0] = NAN;
    v60.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v60), v3, v2);
    v57 = 2654435761u * *v2.i64;
    if (v59 >= 0.0)
    {
      if (v59 > 0.0)
      {
        v57 += v59;
      }
    }

    else
    {
      v57 -= fabs(v59);
    }
  }

  else
  {
    v57 = 0;
  }

  if ((*&has & 0x200) != 0)
  {
    maximumBehavioralRuleLift = self->_maximumBehavioralRuleLift;
    if (maximumBehavioralRuleLift < 0.0)
    {
      maximumBehavioralRuleLift = -maximumBehavioralRuleLift;
    }

    *v2.i64 = floor(maximumBehavioralRuleLift + 0.5);
    v63 = (maximumBehavioralRuleLift - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v64.f64[0] = NAN;
    v64.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v64), v3, v2);
    v61 = 2654435761u * *v2.i64;
    if (v63 >= 0.0)
    {
      if (v63 > 0.0)
      {
        v61 += v63;
      }
    }

    else
    {
      v61 -= fabs(v63);
    }
  }

  else
  {
    v61 = 0;
  }

  if ((*&has & 0x100) != 0)
  {
    maximumBehavioralRuleConviction = self->_maximumBehavioralRuleConviction;
    if (maximumBehavioralRuleConviction < 0.0)
    {
      maximumBehavioralRuleConviction = -maximumBehavioralRuleConviction;
    }

    *v2.i64 = floor(maximumBehavioralRuleConviction + 0.5);
    v67 = (maximumBehavioralRuleConviction - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v68.f64[0] = NAN;
    v68.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v68), v3, v2);
    v65 = 2654435761u * *v2.i64;
    if (v67 >= 0.0)
    {
      if (v67 > 0.0)
      {
        v65 += v67;
      }
    }

    else
    {
      v65 -= fabs(v67);
    }
  }

  else
  {
    v65 = 0;
  }

  if ((*&has & 0x800) != 0)
  {
    maximumBehavioralRulePowerFactor = self->_maximumBehavioralRulePowerFactor;
    if (maximumBehavioralRulePowerFactor < 0.0)
    {
      maximumBehavioralRulePowerFactor = -maximumBehavioralRulePowerFactor;
    }

    *v2.i64 = floor(maximumBehavioralRulePowerFactor + 0.5);
    v71 = (maximumBehavioralRulePowerFactor - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v72.f64[0] = NAN;
    v72.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v72), v3, v2);
    v69 = 2654435761u * *v2.i64;
    if (v71 >= 0.0)
    {
      if (v71 > 0.0)
      {
        v69 += v71;
      }
    }

    else
    {
      v69 -= fabs(v71);
    }
  }

  else
  {
    v69 = 0;
  }

  if ((*&has & 0x400) != 0)
  {
    maximumBehavioralRuleMLScore = self->_maximumBehavioralRuleMLScore;
    if (maximumBehavioralRuleMLScore < 0.0)
    {
      maximumBehavioralRuleMLScore = -maximumBehavioralRuleMLScore;
    }

    *v2.i64 = floor(maximumBehavioralRuleMLScore + 0.5);
    v75 = (maximumBehavioralRuleMLScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v76.f64[0] = NAN;
    v76.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v76), v3, v2);
    v73 = 2654435761u * *v2.i64;
    if (v75 >= 0.0)
    {
      if (v75 > 0.0)
      {
        v73 += v75;
      }
    }

    else
    {
      v73 -= fabs(v75);
    }
  }

  else
  {
    v73 = 0;
  }

  if ((*&has & 0x1000000) != 0)
  {
    stdevBehavioralRuleSupport = self->_stdevBehavioralRuleSupport;
    if (stdevBehavioralRuleSupport < 0.0)
    {
      stdevBehavioralRuleSupport = -stdevBehavioralRuleSupport;
    }

    *v2.i64 = floor(stdevBehavioralRuleSupport + 0.5);
    v79 = (stdevBehavioralRuleSupport - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v80.f64[0] = NAN;
    v80.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v80), v3, v2);
    v77 = 2654435761u * *v2.i64;
    if (v79 >= 0.0)
    {
      if (v79 > 0.0)
      {
        v77 += v79;
      }
    }

    else
    {
      v77 -= fabs(v79);
    }
  }

  else
  {
    v77 = 0;
  }

  if ((*&has & 0x80000) != 0)
  {
    stdevBehavioralRuleConfidence = self->_stdevBehavioralRuleConfidence;
    if (stdevBehavioralRuleConfidence < 0.0)
    {
      stdevBehavioralRuleConfidence = -stdevBehavioralRuleConfidence;
    }

    *v2.i64 = floor(stdevBehavioralRuleConfidence + 0.5);
    v83 = (stdevBehavioralRuleConfidence - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v84.f64[0] = NAN;
    v84.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v84), v3, v2);
    v81 = 2654435761u * *v2.i64;
    if (v83 >= 0.0)
    {
      if (v83 > 0.0)
      {
        v81 += v83;
      }
    }

    else
    {
      v81 -= fabs(v83);
    }
  }

  else
  {
    v81 = 0;
  }

  v118 = v45;
  v117 = v65;
  if ((*&has & 0x200000) != 0)
  {
    stdevBehavioralRuleLift = self->_stdevBehavioralRuleLift;
    if (stdevBehavioralRuleLift < 0.0)
    {
      stdevBehavioralRuleLift = -stdevBehavioralRuleLift;
    }

    *v2.i64 = floor(stdevBehavioralRuleLift + 0.5);
    v88 = (stdevBehavioralRuleLift - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v89.f64[0] = NAN;
    v89.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v89), v3, v2);
    v86 = 2654435761u * *v2.i64;
    v85 = v8;
    if (v88 >= 0.0)
    {
      if (v88 > 0.0)
      {
        v86 += v88;
      }
    }

    else
    {
      v86 -= fabs(v88);
    }
  }

  else
  {
    v85 = v8;
    v86 = 0;
  }

  v115 = v77;
  v116 = v69;
  v90 = v61;
  if ((*&has & 0x100000) != 0)
  {
    v95 = v9;
    stdevBehavioralRuleConviction = self->_stdevBehavioralRuleConviction;
    if (stdevBehavioralRuleConviction < 0.0)
    {
      stdevBehavioralRuleConviction = -stdevBehavioralRuleConviction;
    }

    *v2.i64 = floor(stdevBehavioralRuleConviction + 0.5);
    v98 = (stdevBehavioralRuleConviction - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v99.f64[0] = NAN;
    v99.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v99), v3, v2);
    v96 = 2654435761u * *v2.i64;
    v91 = v37;
    v92 = v21;
    v93 = v17;
    v94 = v13;
    if (v98 >= 0.0)
    {
      if (v98 > 0.0)
      {
        v96 += v98;
      }
    }

    else
    {
      v96 -= fabs(v98);
    }
  }

  else
  {
    v91 = v37;
    v92 = v21;
    v93 = v17;
    v94 = v13;
    v95 = v9;
    v96 = 0;
  }

  v100 = v73;
  if ((*&has & 0x800000) != 0)
  {
    stdevBehavioralRulePowerFactor = self->_stdevBehavioralRulePowerFactor;
    if (stdevBehavioralRulePowerFactor < 0.0)
    {
      stdevBehavioralRulePowerFactor = -stdevBehavioralRulePowerFactor;
    }

    *v2.i64 = floor(stdevBehavioralRulePowerFactor + 0.5);
    v104 = (stdevBehavioralRulePowerFactor - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v105.f64[0] = NAN;
    v105.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v105), v3, v2);
    v102 = 2654435761u * *v2.i64;
    v101 = v33;
    if (v104 >= 0.0)
    {
      if (v104 > 0.0)
      {
        v102 += v104;
      }
    }

    else
    {
      v102 -= fabs(v104);
    }
  }

  else
  {
    v101 = v33;
    v102 = 0;
  }

  if ((*&has & 0x400000) != 0)
  {
    stdevBehavioralRuleMLScore = self->_stdevBehavioralRuleMLScore;
    if (stdevBehavioralRuleMLScore < 0.0)
    {
      stdevBehavioralRuleMLScore = -stdevBehavioralRuleMLScore;
    }

    *v2.i64 = floor(stdevBehavioralRuleMLScore + 0.5);
    v108 = (stdevBehavioralRuleMLScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v109.f64[0] = NAN;
    v109.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v109), v3, v2);
    v106 = 2654435761u * *v2.i64;
    if (v108 >= 0.0)
    {
      if (v108 > 0.0)
      {
        v106 += v108;
      }
    }

    else
    {
      v106 -= fabs(v108);
    }
  }

  else
  {
    v106 = 0;
  }

  if ((*&has & 0x40) != 0)
  {
    interactionModelScore = self->_interactionModelScore;
    if (interactionModelScore < 0.0)
    {
      interactionModelScore = -interactionModelScore;
    }

    *v2.i64 = floor(interactionModelScore + 0.5);
    v112 = (interactionModelScore - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v113.f64[0] = NAN;
    v113.f64[1] = NAN;
    v110 = 2654435761u * *vbslq_s8(vnegq_f64(v113), v3, v2).i64;
    if (v112 >= 0.0)
    {
      if (v112 > 0.0)
      {
        v110 += v112;
      }
    }

    else
    {
      v110 -= fabs(v112);
    }
  }

  else
  {
    v110 = 0;
  }

  return (2654435761 * self->_timeSinceLastContactViaIncomingText) ^ (2654435761 * self->_timeSinceLastContactViaShare) ^ (2654435761 * self->_timeSinceLastContactViaOutgoingText) ^ v123 ^ v122 ^ (2654435761 * self->_normalizedShareFrequency) ^ (2654435761 * self->_normalizedIncomingTextFrequency) ^ (2654435761 * self->_normalizedOutgoingTextFrequency) ^ v121 ^ v120 ^ v119 ^ v85 ^ v95 ^ v94 ^ v93 ^ v92 ^ v25 ^ v29 ^ v101 ^ v91 ^ v41 ^ v118 ^ v49 ^ v53 ^ v57 ^ v90 ^ v117 ^ v116 ^ v100 ^ v115 ^ v81 ^ v86 ^ v96 ^ v102 ^ v106 ^ v110 ^ (2654435761 * self->_wasShareRecipient);
}

- (void)mergeFrom:(id)a3
{
  self->_timeSinceLastContactViaShare = *(a3 + 62);
  self->_timeSinceLastContactViaIncomingText = *(a3 + 59);
  self->_timeSinceLastContactViaOutgoingText = *(a3 + 61);
  v3 = *(a3 + 64);
  if ((v3 & 0x10000000) != 0)
  {
    self->_timeSinceLastContactViaIncomingCall = *(a3 + 58);
    *&self->_has |= 0x10000000u;
    v3 = *(a3 + 64);
  }

  if ((v3 & 0x20000000) != 0)
  {
    self->_timeSinceLastContactViaOutgoingCall = *(a3 + 60);
    *&self->_has |= 0x20000000u;
  }

  self->_normalizedShareFrequency = *(a3 + 56);
  self->_normalizedIncomingTextFrequency = *(a3 + 53);
  self->_normalizedOutgoingTextFrequency = *(a3 + 55);
  v4 = *(a3 + 64);
  if ((v4 & 0x2000000) != 0)
  {
    self->_normalizedIncomingCallFrequency = *(a3 + 52);
    *&self->_has |= 0x2000000u;
    v4 = *(a3 + 64);
    if ((v4 & 0x4000000) == 0)
    {
LABEL_7:
      if ((v4 & 0x8000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_37;
    }
  }

  else if ((v4 & 0x4000000) == 0)
  {
    goto LABEL_7;
  }

  self->_normalizedOutgoingCallFrequency = *(a3 + 54);
  *&self->_has |= 0x4000000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_8:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_numberOfBehavioralRulesAdvocating = *(a3 + 57);
  *&self->_has |= 0x8000000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x20) == 0)
  {
LABEL_9:
    if ((v4 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_averageBehavioralRuleSupport = *(a3 + 6);
  *&self->_has |= 0x20u;
  v4 = *(a3 + 64);
  if ((v4 & 1) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_averageBehavioralRuleConfidence = *(a3 + 1);
  *&self->_has |= 1u;
  v4 = *(a3 + 64);
  if ((v4 & 4) == 0)
  {
LABEL_11:
    if ((v4 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_averageBehavioralRuleLift = *(a3 + 3);
  *&self->_has |= 4u;
  v4 = *(a3 + 64);
  if ((v4 & 2) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_averageBehavioralRuleConviction = *(a3 + 2);
  *&self->_has |= 2u;
  v4 = *(a3 + 64);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_averageBehavioralRulePowerFactor = *(a3 + 5);
  *&self->_has |= 0x10u;
  v4 = *(a3 + 64);
  if ((v4 & 8) == 0)
  {
LABEL_14:
    if ((v4 & 0x40000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_averageBehavioralRuleMLScore = *(a3 + 4);
  *&self->_has |= 8u;
  v4 = *(a3 + 64);
  if ((v4 & 0x40000) == 0)
  {
LABEL_15:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_minimumBehavioralRuleSupport = *(a3 + 19);
  *&self->_has |= 0x40000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x2000) == 0)
  {
LABEL_16:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_minimumBehavioralRuleConfidence = *(a3 + 14);
  *&self->_has |= 0x2000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x8000) == 0)
  {
LABEL_17:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_minimumBehavioralRuleLift = *(a3 + 16);
  *&self->_has |= 0x8000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x4000) == 0)
  {
LABEL_18:
    if ((v4 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_minimumBehavioralRuleConviction = *(a3 + 15);
  *&self->_has |= 0x4000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x20000) == 0)
  {
LABEL_19:
    if ((v4 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_minimumBehavioralRulePowerFactor = *(a3 + 18);
  *&self->_has |= 0x20000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x10000) == 0)
  {
LABEL_20:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_minimumBehavioralRuleMLScore = *(a3 + 17);
  *&self->_has |= 0x10000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x1000) == 0)
  {
LABEL_21:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_maximumBehavioralRuleSupport = *(a3 + 13);
  *&self->_has |= 0x1000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x80) == 0)
  {
LABEL_22:
    if ((v4 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_maximumBehavioralRuleConfidence = *(a3 + 8);
  *&self->_has |= 0x80u;
  v4 = *(a3 + 64);
  if ((v4 & 0x200) == 0)
  {
LABEL_23:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_maximumBehavioralRuleLift = *(a3 + 10);
  *&self->_has |= 0x200u;
  v4 = *(a3 + 64);
  if ((v4 & 0x100) == 0)
  {
LABEL_24:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_maximumBehavioralRuleConviction = *(a3 + 9);
  *&self->_has |= 0x100u;
  v4 = *(a3 + 64);
  if ((v4 & 0x800) == 0)
  {
LABEL_25:
    if ((v4 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_maximumBehavioralRulePowerFactor = *(a3 + 12);
  *&self->_has |= 0x800u;
  v4 = *(a3 + 64);
  if ((v4 & 0x400) == 0)
  {
LABEL_26:
    if ((v4 & 0x1000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_maximumBehavioralRuleMLScore = *(a3 + 11);
  *&self->_has |= 0x400u;
  v4 = *(a3 + 64);
  if ((v4 & 0x1000000) == 0)
  {
LABEL_27:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_stdevBehavioralRuleSupport = *(a3 + 25);
  *&self->_has |= 0x1000000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x80000) == 0)
  {
LABEL_28:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_stdevBehavioralRuleConfidence = *(a3 + 20);
  *&self->_has |= 0x80000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x200000) == 0)
  {
LABEL_29:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_stdevBehavioralRuleLift = *(a3 + 22);
  *&self->_has |= 0x200000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x100000) == 0)
  {
LABEL_30:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_stdevBehavioralRuleConviction = *(a3 + 21);
  *&self->_has |= 0x100000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x800000) == 0)
  {
LABEL_31:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_32;
    }

LABEL_61:
    self->_stdevBehavioralRuleMLScore = *(a3 + 23);
    *&self->_has |= 0x400000u;
    if ((*(a3 + 64) & 0x40) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_60:
  self->_stdevBehavioralRulePowerFactor = *(a3 + 24);
  *&self->_has |= 0x800000u;
  v4 = *(a3 + 64);
  if ((v4 & 0x400000) != 0)
  {
    goto LABEL_61;
  }

LABEL_32:
  if ((v4 & 0x40) != 0)
  {
LABEL_33:
    self->_interactionModelScore = *(a3 + 7);
    *&self->_has |= 0x40u;
  }

LABEL_34:
  self->_wasShareRecipient = *(a3 + 252);
}

@end