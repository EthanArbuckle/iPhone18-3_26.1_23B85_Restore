@interface COMAPPLEPROACTIVEGMSGMSPrewarmEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsOutcome:(id)a3;
- (int)outcome;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasOutcome:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation COMAPPLEPROACTIVEGMSGMSPrewarmEvent

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 28);
  if ((v5 & 2) != 0)
  {
    self->_version = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 28);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 28) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_outcome = *(v4 + 6);
  *&self->_has |= 4u;
  if (*(v4 + 28))
  {
LABEL_4:
    self->_latencyMillis = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    return v5 ^ v4 ^ v9;
  }

  v4 = 2654435761 * self->_version;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761 * self->_outcome;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  latencyMillis = self->_latencyMillis;
  if (latencyMillis < 0.0)
  {
    latencyMillis = -latencyMillis;
  }

  *v2.i64 = floor(latencyMillis + 0.5);
  v7 = (latencyMillis - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
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

  return v5 ^ v4 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 28) & 2) == 0 || self->_version != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 28) & 2) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 28) & 4) == 0 || self->_outcome != *(v4 + 6))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 28) & 4) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_latencyMillis != *(v4 + 1))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_version;
    *(result + 28) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_outcome;
  *(result + 28) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = *&self->_latencyMillis;
  *(result + 28) |= 1u;
  return result;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_version;
    *(v4 + 28) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_outcome;
  *(v4 + 28) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v4[1] = *&self->_latencyMillis;
    *(v4 + 28) |= 1u;
  }

LABEL_5:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    version = self->_version;
    PBDataWriterWriteInt64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  outcome = self->_outcome;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    latencyMillis = self->_latencyMillis;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_version];
    [v3 setObject:v7 forKey:@"version"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  outcome = self->_outcome;
  if (outcome >= 5)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_outcome];
  }

  else
  {
    v9 = off_1E86C2DD0[outcome];
  }

  [v3 setObject:v9 forKey:@"outcome"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_latencyMillis];
  [v3 setObject:v5 forKey:@"latencyMillis"];

LABEL_5:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPROACTIVEGMSGMSPrewarmEvent;
  v4 = [(COMAPPLEPROACTIVEGMSGMSPrewarmEvent *)&v8 description];
  v5 = [(COMAPPLEPROACTIVEGMSGMSPrewarmEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsOutcome:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"GMS_PREWARM_OUTCOME_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"GMS_PREWARM_OUTCOME_MATCHING_INFERENCE_EVENT"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GMS_PREWARM_OUTCOME_REDUNDANT_PREWARM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GMS_PREWARM_OUTCOME_ABANDONED_FOR_TIME"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"GMS_PREWARM_OUTCOME_ABANDONED_FOR_BUFFER_SIZE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasOutcome:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)outcome
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_outcome;
  }

  else
  {
    return 0;
  }
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end