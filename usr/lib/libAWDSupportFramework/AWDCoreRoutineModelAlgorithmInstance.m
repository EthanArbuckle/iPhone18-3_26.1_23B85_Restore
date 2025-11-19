@interface AWDCoreRoutineModelAlgorithmInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDistanceFromTruth:(BOOL)a3;
- (void)setHasEfficacy:(BOOL)a3;
- (void)setHasIsRotted:(BOOL)a3;
- (void)setHasPreviousType:(BOOL)a3;
- (void)setHasSource:(BOOL)a3;
- (void)setHasTruthSource:(BOOL)a3;
- (void)setHasTruthType:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)setHasUncertainty:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineModelAlgorithmInstance

- (void)setHasType:(BOOL)a3
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

- (void)setHasEfficacy:(BOOL)a3
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

- (void)setHasSource:(BOOL)a3
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

- (void)setHasUncertainty:(BOOL)a3
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

- (void)setHasDistanceFromTruth:(BOOL)a3
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

- (void)setHasPreviousType:(BOOL)a3
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

- (void)setHasTruthType:(BOOL)a3
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

- (void)setHasTruthSource:(BOOL)a3
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

- (void)setHasIsRotted:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelAlgorithmInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineModelAlgorithmInstance description](&v3, sel_description), -[AWDCoreRoutineModelAlgorithmInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_type), @"type"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_efficacy), @"efficacy"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_source), @"source"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_uncertainty), @"uncertainty"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_distanceFromTruth), @"distanceFromTruth"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_addressComponentMatches), @"addressComponentMatches"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_previousType), @"previousType"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_truthSource), @"truthSource"}];
    if ((*&self->_has & 0x200) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_truthType), @"truthType"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 0x200) != 0)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isRotted), @"isRotted"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    type = self->_type;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  efficacy = self->_efficacy;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  source = self->_source;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  uncertainty = self->_uncertainty;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  distanceFromTruth = self->_distanceFromTruth;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  addressComponentMatches = self->_addressComponentMatches;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  previousType = self->_previousType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    truthSource = self->_truthSource;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x200) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_19:
  truthType = self->_truthType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((has & 0x200) == 0)
  {
    return;
  }

LABEL_21:
  isRotted = self->_isRotted;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(a3 + 13) = self->_type;
    *(a3 + 30) |= 0x100u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 8) = self->_efficacy;
  *(a3 + 30) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 10) = self->_source;
  *(a3 + 30) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 3) = *&self->_uncertainty;
  *(a3 + 30) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 2) = *&self->_distanceFromTruth;
  *(a3 + 30) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 1) = self->_addressComponentMatches;
  *(a3 + 30) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 9) = self->_previousType;
  *(a3 + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 12) = self->_truthType;
  *(a3 + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      return;
    }

LABEL_21:
    *(a3 + 56) = self->_isRotted;
    *(a3 + 30) |= 0x200u;
    return;
  }

LABEL_20:
  *(a3 + 11) = self->_truthSource;
  *(a3 + 30) |= 0x40u;
  if ((*&self->_has & 0x200) != 0)
  {
    goto LABEL_21;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 13) = self->_type;
    *(result + 30) |= 0x100u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_efficacy;
  *(result + 30) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 10) = self->_source;
  *(result + 30) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 3) = *&self->_uncertainty;
  *(result + 30) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 2) = *&self->_distanceFromTruth;
  *(result + 30) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 1) = self->_addressComponentMatches;
  *(result + 30) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 9) = self->_previousType;
  *(result + 30) |= 0x10u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 12) = self->_truthType;
  *(result + 30) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 11) = self->_truthSource;
  *(result + 30) |= 0x40u;
  if ((*&self->_has & 0x200) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 56) = self->_isRotted;
  *(result + 30) |= 0x200u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 30);
    if ((has & 0x100) != 0)
    {
      if ((*(a3 + 30) & 0x100) == 0 || self->_type != *(a3 + 13))
      {
        goto LABEL_49;
      }
    }

    else if ((*(a3 + 30) & 0x100) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_efficacy != *(a3 + 8))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_source != *(a3 + 10))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_uncertainty != *(a3 + 3))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_distanceFromTruth != *(a3 + 2))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_49;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_addressComponentMatches != *(a3 + 1))
      {
        goto LABEL_49;
      }
    }

    else if (v7)
    {
      goto LABEL_49;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_previousType != *(a3 + 9))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_truthType != *(a3 + 12))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_49;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_truthSource != *(a3 + 11))
      {
        goto LABEL_49;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_49;
    }

    LOBYTE(v5) = (v7 & 0x200) == 0;
    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(a3 + 30) & 0x200) == 0)
      {
LABEL_49:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_isRotted)
      {
        if ((*(a3 + 56) & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else if (*(a3 + 56))
      {
        goto LABEL_49;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v5 = 2654435761 * self->_type;
    if ((has & 8) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_efficacy;
      if ((has & 0x20) != 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      v7 = 0;
      if ((has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v7 = 2654435761 * self->_source;
  if ((has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  uncertainty = self->_uncertainty;
  if (uncertainty < 0.0)
  {
    uncertainty = -uncertainty;
  }

  *v2.i64 = floor(uncertainty + 0.5);
  v9 = (uncertainty - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v10), v3, v2);
  v11 = 2654435761u * *v2.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_13:
  if ((has & 2) != 0)
  {
    distanceFromTruth = self->_distanceFromTruth;
    if (distanceFromTruth < 0.0)
    {
      distanceFromTruth = -distanceFromTruth;
    }

    *v2.i64 = floor(distanceFromTruth + 0.5);
    v14 = (distanceFromTruth - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v3, v2).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if (has)
  {
    v16 = 2654435761u * self->_addressComponentMatches;
    if ((has & 0x10) != 0)
    {
LABEL_25:
      v17 = 2654435761 * self->_previousType;
      if ((has & 0x80) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v16 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_25;
    }
  }

  v17 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_26:
    v18 = 2654435761 * self->_truthType;
    if ((has & 0x40) != 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v19 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    v20 = 0;
    return v6 ^ v5 ^ v7 ^ v11 ^ v12 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
  }

LABEL_31:
  v18 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_32;
  }

LABEL_27:
  v19 = 2654435761 * self->_truthSource;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  v20 = 2654435761 * self->_isRotted;
  return v6 ^ v5 ^ v7 ^ v11 ^ v12 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 30);
  if ((v3 & 0x100) != 0)
  {
    self->_type = *(a3 + 13);
    *&self->_has |= 0x100u;
    v3 = *(a3 + 30);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_efficacy = *(a3 + 8);
  *&self->_has |= 8u;
  v3 = *(a3 + 30);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_source = *(a3 + 10);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 30);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_uncertainty = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 30);
  if ((v3 & 2) == 0)
  {
LABEL_6:
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_distanceFromTruth = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 30);
  if ((v3 & 1) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_addressComponentMatches = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 30);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_previousType = *(a3 + 9);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 30);
  if ((v3 & 0x80) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_truthType = *(a3 + 12);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 30);
  if ((v3 & 0x40) == 0)
  {
LABEL_10:
    if ((v3 & 0x200) == 0)
    {
      return;
    }

LABEL_21:
    self->_isRotted = *(a3 + 56);
    *&self->_has |= 0x200u;
    return;
  }

LABEL_20:
  self->_truthSource = *(a3 + 11);
  *&self->_has |= 0x40u;
  if ((*(a3 + 30) & 0x200) != 0)
  {
    goto LABEL_21;
  }
}

@end