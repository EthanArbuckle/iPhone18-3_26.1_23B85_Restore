@interface CSLUIPBNumber
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBoolValue:(BOOL)value;
- (void)setHasFloatValue:(BOOL)value;
- (void)setHasInt32Value:(BOOL)value;
- (void)setHasInt64Value:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation CSLUIPBNumber

- (void)setHasInt32Value:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasFloatValue:(BOOL)value
{
  if (value)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasBoolValue:(BOOL)value
{
  if (value)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasInt64Value:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CSLUIPBNumber;
  v4 = [(CSLUIPBNumber *)&v8 description];
  dictionaryRepresentation = [(CSLUIPBNumber *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_int32Value];
    [dictionary setObject:v8 forKey:@"int32Value"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_floatValue;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  [dictionary setObject:v9 forKey:@"floatValue"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doubleValue];
  [dictionary setObject:v10 forKey:@"doubleValue"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_BOOLValue];
  [dictionary setObject:v11 forKey:@"BOOLValue"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_int64Value];
    [dictionary setObject:v6 forKey:@"int64Value"];
  }

LABEL_7:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    int32Value = self->_int32Value;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  floatValue = self->_floatValue;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  doubleValue = self->_doubleValue;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  BOOLValue = self->_BOOLValue;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    int64Value = self->_int64Value;
    PBDataWriterWriteInt64Field();
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[7] = self->_int32Value;
    *(toCopy + 36) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  toCopy[6] = LODWORD(self->_floatValue);
  *(toCopy + 36) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(toCopy + 1) = *&self->_doubleValue;
  *(toCopy + 36) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(toCopy + 32) = self->_BOOLValue;
  *(toCopy + 36) |= 0x10u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 2) = self->_int64Value;
    *(toCopy + 36) |= 2u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 7) = self->_int32Value;
    *(result + 36) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = LODWORD(self->_floatValue);
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 1) = *&self->_doubleValue;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 32) = self->_BOOLValue;
  *(result + 36) |= 0x10u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 2) = self->_int64Value;
  *(result + 36) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[36] & 8) == 0 || self->_int32Value != *(equalCopy + 7))
    {
      goto LABEL_26;
    }
  }

  else if ((equalCopy[36] & 8) != 0)
  {
LABEL_26:
    v5 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[36] & 4) == 0 || self->_floatValue != *(equalCopy + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((equalCopy[36] & 4) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((equalCopy[36] & 1) == 0 || self->_doubleValue != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (equalCopy[36])
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((equalCopy[36] & 0x10) == 0 || self->_BOOLValue != equalCopy[32])
    {
      goto LABEL_26;
    }
  }

  else if ((equalCopy[36] & 0x10) != 0)
  {
    goto LABEL_26;
  }

  v5 = (equalCopy[36] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[36] & 2) == 0 || self->_int64Value != *(equalCopy + 2))
    {
      goto LABEL_26;
    }

    v5 = 1;
  }

LABEL_27:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v4 = 2654435761 * self->_int32Value;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  floatValue = self->_floatValue;
  if (floatValue >= 0.0)
  {
    v6 = floatValue;
  }

  else
  {
    v6 = -floatValue;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_10:
  if (*&self->_has)
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v2.i64 = floor(doubleValue + 0.5);
    v12 = (doubleValue - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v14 = 2654435761 * self->_BOOLValue;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v15 = 0;
    return v9 ^ v4 ^ v10 ^ v14 ^ v15;
  }

  v14 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_22:
  v15 = 2654435761 * self->_int64Value;
  return v9 ^ v4 ^ v10 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if ((v5 & 8) != 0)
  {
    self->_int32Value = *(fromCopy + 7);
    *&self->_has |= 8u;
    v5 = *(fromCopy + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_floatValue = *(fromCopy + 6);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 36);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_doubleValue = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_BOOLValue = *(fromCopy + 32);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 36) & 2) != 0)
  {
LABEL_6:
    self->_int64Value = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_7:
}

@end