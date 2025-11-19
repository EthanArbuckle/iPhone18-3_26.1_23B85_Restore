@interface CAPContactFillerUserEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLowConfidenceRuleCount:(BOOL)a3;
- (void)setHasMediumConfidenceRuleCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAPContactFillerUserEvent

- (void)setHasMediumConfidenceRuleCount:(BOOL)a3
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

- (void)setHasLowConfidenceRuleCount:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CAPContactFillerUserEvent;
  v4 = [(CAPContactFillerUserEvent *)&v8 description];
  v5 = [(CAPContactFillerUserEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_textInteractionsSent];
  [v3 setObject:v4 forKey:@"textInteractionsSent"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_textInteractionsReceived];
  [v3 setObject:v5 forKey:@"textInteractionsReceived"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_shareInteractionsSent];
  [v3 setObject:v6 forKey:@"shareInteractionsSent"];

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_highConfidenceRuleCount];
    [v3 setObject:v10 forKey:@"highConfidenceRuleCount"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_mediumConfidenceRuleCount];
  [v3 setObject:v11 forKey:@"mediumConfidenceRuleCount"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_lowConfidenceRuleCount];
    [v3 setObject:v8 forKey:@"lowConfidenceRuleCount"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  textInteractionsSent = self->_textInteractionsSent;
  PBDataWriterWriteUint32Field();
  textInteractionsReceived = self->_textInteractionsReceived;
  PBDataWriterWriteUint32Field();
  shareInteractionsSent = self->_shareInteractionsSent;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    highConfidenceRuleCount = self->_highConfidenceRuleCount;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  mediumConfidenceRuleCount = self->_mediumConfidenceRuleCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    lowConfidenceRuleCount = self->_lowConfidenceRuleCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[7] = self->_textInteractionsSent;
  v4[6] = self->_textInteractionsReceived;
  v4[5] = self->_shareInteractionsSent;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_highConfidenceRuleCount;
    *(v4 + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  v4[4] = self->_mediumConfidenceRuleCount;
  *(v4 + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[3] = self->_lowConfidenceRuleCount;
    *(v4 + 32) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 7) = self->_textInteractionsSent;
  *(result + 6) = self->_textInteractionsReceived;
  *(result + 5) = self->_shareInteractionsSent;
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_highConfidenceRuleCount;
    *(result + 32) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  *(result + 4) = self->_mediumConfidenceRuleCount;
  *(result + 32) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 3) = self->_lowConfidenceRuleCount;
  *(result + 32) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_textInteractionsSent != *(v4 + 7) || self->_textInteractionsReceived != *(v4 + 6) || self->_shareInteractionsSent != *(v4 + 5))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_highConfidenceRuleCount != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_19:
    v5 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_mediumConfidenceRuleCount != *(v4 + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  v5 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_lowConfidenceRuleCount != *(v4 + 3))
    {
      goto LABEL_19;
    }

    v5 = 1;
  }

LABEL_20:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_highConfidenceRuleCount;
  }

  else
  {
    v2 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_mediumConfidenceRuleCount;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v4 = 0;
    return (2654435761 * self->_textInteractionsReceived) ^ (2654435761 * self->_textInteractionsSent) ^ (2654435761 * self->_shareInteractionsSent) ^ v2 ^ v3 ^ v4;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v4 = 2654435761 * self->_lowConfidenceRuleCount;
  return (2654435761 * self->_textInteractionsReceived) ^ (2654435761 * self->_textInteractionsSent) ^ (2654435761 * self->_shareInteractionsSent) ^ v2 ^ v3 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_textInteractionsSent = v4[7];
  self->_textInteractionsReceived = v4[6];
  self->_shareInteractionsSent = v4[5];
  v5 = *(v4 + 32);
  if (v5)
  {
    self->_highConfidenceRuleCount = v4[2];
    *&self->_has |= 1u;
    v5 = *(v4 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4[8] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_mediumConfidenceRuleCount = v4[4];
  *&self->_has |= 4u;
  if ((v4[8] & 2) != 0)
  {
LABEL_4:
    self->_lowConfidenceRuleCount = v4[3];
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end