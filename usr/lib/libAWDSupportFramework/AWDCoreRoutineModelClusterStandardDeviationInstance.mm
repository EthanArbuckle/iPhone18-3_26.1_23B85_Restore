@interface AWDCoreRoutineModelClusterStandardDeviationInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExitStandardDeviation:(BOOL)deviation;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineModelClusterStandardDeviationInstance

- (void)setHasExitStandardDeviation:(BOOL)deviation
{
  if (deviation)
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
  v3.super_class = AWDCoreRoutineModelClusterStandardDeviationInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineModelClusterStandardDeviationInstance description](&v3, sel_description), -[AWDCoreRoutineModelClusterStandardDeviationInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_entryStandardDeviation), @"entryStandardDeviation"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_exitStandardDeviation), @"exitStandardDeviation"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    entryStandardDeviation = self->_entryStandardDeviation;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    exitStandardDeviation = self->_exitStandardDeviation;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

LABEL_5:
    *(to + 3) = self->_exitStandardDeviation;
    *(to + 16) |= 2u;
    return;
  }

  *(to + 2) = self->_entryStandardDeviation;
  *(to + 16) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_entryStandardDeviation;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 3) = self->_exitStandardDeviation;
    *(result + 16) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 16) & 1) == 0 || self->_entryStandardDeviation != *(equal + 2))
      {
        goto LABEL_11;
      }
    }

    else if (*(equal + 16))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 16) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 16) & 2) == 0 || self->_exitStandardDeviation != *(equal + 3))
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
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_entryStandardDeviation;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_exitStandardDeviation;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 16) & 1) == 0)
  {
    if ((*(from + 16) & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_exitStandardDeviation = *(from + 3);
    *&self->_has |= 2u;
    return;
  }

  self->_entryStandardDeviation = *(from + 2);
  *&self->_has |= 1u;
  if ((*(from + 16) & 2) != 0)
  {
    goto LABEL_5;
  }
}

@end