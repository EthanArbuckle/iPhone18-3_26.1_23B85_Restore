@interface AWDSafariDidTerminateWebProcessBeforeNavigation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsTerminationReason:(id)a3;
- (int)terminationReason;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTerminationReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariDidTerminateWebProcessBeforeNavigation

- (int)terminationReason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_terminationReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTerminationReason:(BOOL)a3
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

- (int)StringAsTerminationReason:(id)a3
{
  if ([a3 isEqualToString:@"UNRESPONSIVE_WEB_PROCESS"])
  {
    return 0;
  }

  else
  {
    return [a3 isEqualToString:@"PRESENTED_DIALOG"];
  }
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariDidTerminateWebProcessBeforeNavigation;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariDidTerminateWebProcessBeforeNavigation description](&v3, sel_description), -[AWDSafariDidTerminateWebProcessBeforeNavigation dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    terminationReason = self->_terminationReason;
    if (terminationReason)
    {
      if (terminationReason == 1)
      {
        v6 = @"PRESENTED_DIALOG";
      }

      else
      {
        v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_terminationReason];
      }
    }

    else
    {
      v6 = @"UNRESPONSIVE_WEB_PROCESS";
    }

    [v3 setObject:v6 forKey:@"terminationReason"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    terminationReason = self->_terminationReason;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

LABEL_5:
    *(a3 + 4) = self->_terminationReason;
    *(a3 + 20) |= 2u;
    return;
  }

  *(a3 + 1) = self->_timestamp;
  *(a3 + 20) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 4) = self->_terminationReason;
    *(result + 20) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 20) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_11;
      }
    }

    else if (*(a3 + 20))
    {
LABEL_11:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(a3 + 20) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 20) & 2) == 0 || self->_terminationReason != *(a3 + 4))
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
    v2 = 2654435761u * self->_timestamp;
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
  v3 = 2654435761 * self->_terminationReason;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 20) & 1) == 0)
  {
    if ((*(a3 + 20) & 2) == 0)
    {
      return;
    }

LABEL_5:
    self->_terminationReason = *(a3 + 4);
    *&self->_has |= 2u;
    return;
  }

  self->_timestamp = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 20) & 2) != 0)
  {
    goto LABEL_5;
  }
}

@end