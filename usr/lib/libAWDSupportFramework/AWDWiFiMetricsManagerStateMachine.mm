@interface AWDWiFiMetricsManagerStateMachine
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasStateChanges:(BOOL)changes;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerStateMachine

- (void)setHasStateChanges:(BOOL)changes
{
  if (changes)
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
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_stateChanges), @"stateChanges"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_stateDuration), @"stateDuration"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if ((*&self->_has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

LABEL_5:
    *(to + 1) = self->_stateDuration;
    *(to + 20) |= 1u;
    return;
  }

  *(to + 4) = self->_stateChanges;
  *(to + 20) |= 2u;
  if (*&self->_has)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 20) & 2) == 0 || self->_stateChanges != *(equal + 4))
      {
        goto LABEL_11;
      }
    }

    else if ((*(equal + 20) & 2) != 0)
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 20) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 20) & 1) == 0 || self->_stateDuration != *(equal + 1))
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

- (void)mergeFrom:(id)from
{
  if ((*(from + 20) & 2) == 0)
  {
    if ((*(from + 20) & 1) == 0)
    {
      return;
    }

LABEL_5:
    self->_stateDuration = *(from + 1);
    *&self->_has |= 1u;
    return;
  }

  self->_stateChanges = *(from + 4);
  *&self->_has |= 2u;
  if (*(from + 20))
  {
    goto LABEL_5;
  }
}

@end