@interface AWDWiFiMetricsManagerStateMachine
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStateChanges:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerStateMachine

- (void)setHasStateChanges:(BOOL)a3
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
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerStateMachine;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerStateMachine description](&v3, sel_description), -[AWDWiFiMetricsManagerStateMachine dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stateChanges), @"stateChanges"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_stateDuration), @"stateDuration"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    stateChanges = self->_stateChanges;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    stateDuration = self->_stateDuration;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

LABEL_5:
    *(a3 + 1) = self->_stateDuration;
    *(a3 + 20) |= 1u;
    return;
  }

  *(a3 + 4) = self->_stateChanges;
  *(a3 + 20) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 4) = self->_stateChanges;
    *(result + 20) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(result + 1) = self->_stateDuration;
    *(result + 20) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 20) & 2) == 0 || self->_stateChanges != *(a3 + 4))
      {
        goto LABEL_11;
      }
    }

    else if ((*(a3 + 20) & 2) != 0)
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(a3 + 20) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 20) & 1) == 0 || self->_stateDuration != *(a3 + 1))
      {
        goto LABEL_11;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761 * self->_stateChanges;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761u * self->_stateDuration;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 20) & 2) == 0)
  {
    if ((*(a3 + 20) & 1) == 0)
    {
      return;
    }

LABEL_5:
    self->_stateDuration = *(a3 + 1);
    *&self->_has |= 1u;
    return;
  }

  self->_stateChanges = *(a3 + 4);
  *&self->_has |= 2u;
  if (*(a3 + 20))
  {
    goto LABEL_5;
  }
}

@end