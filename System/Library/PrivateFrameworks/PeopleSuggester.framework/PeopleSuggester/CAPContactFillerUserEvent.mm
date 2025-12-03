@interface CAPContactFillerUserEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLowConfidenceRuleCount:(BOOL)count;
- (void)setHasMediumConfidenceRuleCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation CAPContactFillerUserEvent

- (void)setHasMediumConfidenceRuleCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLowConfidenceRuleCount:(BOOL)count
{
  if (count)
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
  dictionaryRepresentation = [(CAPContactFillerUserEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_textInteractionsSent];
  [dictionary setObject:v4 forKey:@"textInteractionsSent"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_textInteractionsReceived];
  [dictionary setObject:v5 forKey:@"textInteractionsReceived"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_shareInteractionsSent];
  [dictionary setObject:v6 forKey:@"shareInteractionsSent"];

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_highConfidenceRuleCount];
    [dictionary setObject:v10 forKey:@"highConfidenceRuleCount"];

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
  [dictionary setObject:v11 forKey:@"mediumConfidenceRuleCount"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_lowConfidenceRuleCount];
    [dictionary setObject:v8 forKey:@"lowConfidenceRuleCount"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[7] = self->_textInteractionsSent;
  toCopy[6] = self->_textInteractionsReceived;
  toCopy[5] = self->_shareInteractionsSent;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_highConfidenceRuleCount;
    *(toCopy + 32) |= 1u;
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

  toCopy[4] = self->_mediumConfidenceRuleCount;
  *(toCopy + 32) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    toCopy[3] = self->_lowConfidenceRuleCount;
    *(toCopy + 32) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_textInteractionsSent != *(equalCopy + 7) || self->_textInteractionsReceived != *(equalCopy + 6) || self->_shareInteractionsSent != *(equalCopy + 5))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_highConfidenceRuleCount != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_19:
    v5 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 32) & 4) == 0 || self->_mediumConfidenceRuleCount != *(equalCopy + 4))
    {
      goto LABEL_19;
    }
  }

  else if ((*(equalCopy + 32) & 4) != 0)
  {
    goto LABEL_19;
  }

  v5 = (*(equalCopy + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_lowConfidenceRuleCount != *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_textInteractionsSent = fromCopy[7];
  self->_textInteractionsReceived = fromCopy[6];
  self->_shareInteractionsSent = fromCopy[5];
  v5 = *(fromCopy + 32);
  if (v5)
  {
    self->_highConfidenceRuleCount = fromCopy[2];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 32);
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

  else if ((fromCopy[8] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_mediumConfidenceRuleCount = fromCopy[4];
  *&self->_has |= 4u;
  if ((fromCopy[8] & 2) != 0)
  {
LABEL_4:
    self->_lowConfidenceRuleCount = fromCopy[3];
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end