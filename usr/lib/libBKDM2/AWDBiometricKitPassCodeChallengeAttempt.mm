@interface AWDBiometricKitPassCodeChallengeAttempt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAmbientLux:(BOOL)lux;
- (void)setHasAttentionScore:(BOOL)score;
- (void)setHasDeviceOrientation:(BOOL)orientation;
- (void)setHasFaceDistance:(BOOL)distance;
- (void)setHasHasOcclusion:(BOOL)occlusion;
- (void)setHasMatchIdentityCount:(BOOL)count;
- (void)setHasMatchType:(BOOL)type;
- (void)setHasPasscodeChallengeResult:(BOOL)result;
- (void)setHasPasscodeChallengeTemplateUpdated:(BOOL)updated;
- (void)setHasPpmAllocatedBudget:(BOOL)budget;
- (void)setHasPpmRequestedBudget:(BOOL)budget;
- (void)setHasSensorTemperature:(BOOL)temperature;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDBiometricKitPassCodeChallengeAttempt

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasPasscodeChallengeResult:(BOOL)result
{
  if (result)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasPasscodeChallengeTemplateUpdated:(BOOL)updated
{
  if (updated)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasAmbientLux:(BOOL)lux
{
  if (lux)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasSensorTemperature:(BOOL)temperature
{
  if (temperature)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasFaceDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAttentionScore:(BOOL)score
{
  if (score)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasHasOcclusion:(BOOL)occlusion
{
  if (occlusion)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasPpmRequestedBudget:(BOOL)budget
{
  if (budget)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasPpmAllocatedBudget:(BOOL)budget
{
  if (budget)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasDeviceOrientation:(BOOL)orientation
{
  if (orientation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasMatchIdentityCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMatchType:(BOOL)type
{
  if (type)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (id)description
{
  v3 = MEMORY[0x29EDBA0F8];
  v8.receiver = self;
  v8.super_class = AWDBiometricKitPassCodeChallengeAttempt;
  v4 = [(AWDBiometricKitPassCodeChallengeAttempt *)&v8 description];
  dictionaryRepresentation = [(AWDBiometricKitPassCodeChallengeAttempt *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:self->_overallTime];
  [dictionary setObject:v8 forKey:@"overallTime"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = [MEMORY[0x29EDBA070] numberWithBool:self->_passcodeChallengeResult];
  [dictionary setObject:v9 forKey:@"passcodeChallengeResult"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = [MEMORY[0x29EDBA070] numberWithBool:self->_passcodeChallengeTemplateUpdated];
  [dictionary setObject:v10 forKey:@"passcodeChallengeTemplateUpdated"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = [MEMORY[0x29EDBA070] numberWithInt:self->_ambientLux];
  [dictionary setObject:v11 forKey:@"ambientLux"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [MEMORY[0x29EDBA070] numberWithInt:self->_sensorTemperature];
  [dictionary setObject:v12 forKey:@"sensorTemperature"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_faceDistance];
  [dictionary setObject:v13 forKey:@"faceDistance"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_attentionScore];
  [dictionary setObject:v14 forKey:@"attentionScore"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v15 = [MEMORY[0x29EDBA070] numberWithBool:self->_hasOcclusion];
  [dictionary setObject:v15 forKey:@"hasOcclusion"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_ppmRequestedBudget];
  [dictionary setObject:v16 forKey:@"ppmRequestedBudget"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v17 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_ppmAllocatedBudget];
  [dictionary setObject:v17 forKey:@"ppmAllocatedBudget"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_deviceOrientation];
  [dictionary setObject:v18 forKey:@"deviceOrientation"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  v19 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchIdentityCount];
  [dictionary setObject:v19 forKey:@"matchIdentityCount"];

  if ((*&self->_has & 0x80) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:self->_matchType];
    [dictionary setObject:v5 forKey:@"matchType"];
  }

LABEL_16:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  overallTime = self->_overallTime;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  passcodeChallengeResult = self->_passcodeChallengeResult;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  passcodeChallengeTemplateUpdated = self->_passcodeChallengeTemplateUpdated;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  ambientLux = self->_ambientLux;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  sensorTemperature = self->_sensorTemperature;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  faceDistance = self->_faceDistance;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  attentionScore = self->_attentionScore;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  hasOcclusion = self->_hasOcclusion;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  ppmRequestedBudget = self->_ppmRequestedBudget;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  ppmAllocatedBudget = self->_ppmAllocatedBudget;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  deviceOrientation = self->_deviceOrientation;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  matchIdentityCount = self->_matchIdentityCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_15:
    matchType = self->_matchType;
    PBDataWriterWriteUint32Field();
  }

LABEL_16:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_timestamp;
    *(toCopy + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[1] = self->_overallTime;
  *(toCopy + 32) |= 1u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 61) = self->_passcodeChallengeResult;
  *(toCopy + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 62) = self->_passcodeChallengeTemplateUpdated;
  *(toCopy + 32) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 6) = self->_ambientLux;
  *(toCopy + 32) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 14) = self->_sensorTemperature;
  *(toCopy + 32) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 9) = self->_faceDistance;
  *(toCopy + 32) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 7) = self->_attentionScore;
  *(toCopy + 32) |= 8u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 60) = self->_hasOcclusion;
  *(toCopy + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(toCopy + 13) = self->_ppmRequestedBudget;
  *(toCopy + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(toCopy + 12) = self->_ppmAllocatedBudget;
  *(toCopy + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 8) = self->_deviceOrientation;
  *(toCopy + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  *(toCopy + 10) = self->_matchIdentityCount;
  *(toCopy + 32) |= 0x40u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_15:
    *(toCopy + 11) = self->_matchType;
    *(toCopy + 32) |= 0x80u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_overallTime;
  *(result + 32) |= 1u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 61) = self->_passcodeChallengeResult;
  *(result + 32) |= 0x1000u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 62) = self->_passcodeChallengeTemplateUpdated;
  *(result + 32) |= 0x2000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 6) = self->_ambientLux;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 14) = self->_sensorTemperature;
  *(result + 32) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(result + 9) = self->_faceDistance;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(result + 7) = self->_attentionScore;
  *(result + 32) |= 8u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 60) = self->_hasOcclusion;
  *(result + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 13) = self->_ppmRequestedBudget;
  *(result + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 12) = self->_ppmAllocatedBudget;
  *(result + 32) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 8) = self->_deviceOrientation;
  *(result + 32) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(result + 10) = self->_matchIdentityCount;
  *(result + 32) |= 0x40u;
  if ((*&self->_has & 0x80) == 0)
  {
    return result;
  }

LABEL_15:
  *(result + 11) = self->_matchType;
  *(result + 32) |= 0x80u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_81;
  }

  has = self->_has;
  v6 = *(equalCopy + 32);
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_81;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_81;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_overallTime != *(equalCopy + 1))
    {
      goto LABEL_81;
    }
  }

  else if (v6)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 32) & 0x1000) == 0)
    {
      goto LABEL_81;
    }

    v7 = *(equalCopy + 61);
    if (self->_passcodeChallengeResult)
    {
      if ((*(equalCopy + 61) & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (*(equalCopy + 61))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 32) & 0x1000) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 32) & 0x2000) == 0)
    {
      goto LABEL_81;
    }

    v8 = *(equalCopy + 62);
    if (self->_passcodeChallengeTemplateUpdated)
    {
      if ((*(equalCopy + 62) & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (*(equalCopy + 62))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 32) & 0x2000) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_ambientLux != *(equalCopy + 6))
    {
      goto LABEL_81;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 32) & 0x400) == 0 || self->_sensorTemperature != *(equalCopy + 14))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 32) & 0x400) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_faceDistance != *(equalCopy + 9))
    {
      goto LABEL_81;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_attentionScore != *(equalCopy + 7))
    {
      goto LABEL_81;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x800) == 0)
  {
    if ((*(equalCopy + 32) & 0x800) == 0)
    {
      goto LABEL_50;
    }

LABEL_81:
    v10 = 0;
    goto LABEL_82;
  }

  if ((*(equalCopy + 32) & 0x800) == 0)
  {
    goto LABEL_81;
  }

  v9 = *(equalCopy + 60);
  if (self->_hasOcclusion)
  {
    if ((*(equalCopy + 60) & 1) == 0)
    {
      goto LABEL_81;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_81;
  }

LABEL_50:
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 32) & 0x200) == 0 || self->_ppmRequestedBudget != *(equalCopy + 13))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 32) & 0x200) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 32) & 0x100) == 0 || self->_ppmAllocatedBudget != *(equalCopy + 12))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 32) & 0x100) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_deviceOrientation != *(equalCopy + 8))
    {
      goto LABEL_81;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_matchIdentityCount != *(equalCopy + 10))
    {
      goto LABEL_81;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_81;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_matchType != *(equalCopy + 11))
    {
      goto LABEL_81;
    }

    v10 = 1;
  }

  else
  {
    v10 = (v6 & 0x80) == 0;
  }

LABEL_82:

  return v10;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if (has)
    {
LABEL_3:
      v4 = 2654435761u * self->_overallTime;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v3 = 0;
    if (has)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_passcodeChallengeResult;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if ((*&self->_has & 0x2000) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_passcodeChallengeTemplateUpdated;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_ambientLux;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_sensorTemperature;
    if ((has & 0x20) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_faceDistance;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_attentionScore;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_hasOcclusion;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_ppmRequestedBudget;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v12 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_ppmAllocatedBudget;
    if ((has & 0x10) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v13 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_13:
    v14 = 2654435761 * self->_deviceOrientation;
    if ((has & 0x40) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v15 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v16 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_27:
  v14 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v15 = 2654435761 * self->_matchIdentityCount;
  if ((has & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v16 = 2654435761 * self->_matchType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 32);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 32);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_overallTime = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_passcodeChallengeResult = *(fromCopy + 61);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x2000) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_passcodeChallengeTemplateUpdated = *(fromCopy + 62);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 32);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_ambientLux = *(fromCopy + 6);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x400) == 0)
  {
LABEL_7:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_sensorTemperature = *(fromCopy + 14);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x20) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_faceDistance = *(fromCopy + 9);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 32);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_attentionScore = *(fromCopy + 7);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x800) == 0)
  {
LABEL_10:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_hasOcclusion = *(fromCopy + 60);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x200) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_ppmRequestedBudget = *(fromCopy + 13);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_ppmAllocatedBudget = *(fromCopy + 12);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x10) == 0)
  {
LABEL_13:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_deviceOrientation = *(fromCopy + 8);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 32);
  if ((v5 & 0x40) == 0)
  {
LABEL_14:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_31:
  self->_matchIdentityCount = *(fromCopy + 10);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 32) & 0x80) != 0)
  {
LABEL_15:
    self->_matchType = *(fromCopy + 11);
    *&self->_has |= 0x80u;
  }

LABEL_16:
}

@end