@interface AWDEventKitSyncCompletedNightlySync
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEventsSynced:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDEventKitSyncCompletedNightlySync

- (void)setHasSuccess:(BOOL)a3
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

- (void)setHasEventsSynced:(BOOL)a3
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
  v3.super_class = AWDEventKitSyncCompletedNightlySync;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDEventKitSyncCompletedNightlySync description](&v3, sel_description), -[AWDEventKitSyncCompletedNightlySync dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_success), @"success"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_4;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_eventsSynced), @"eventsSynced"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    success = self->_success;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_7:
  eventsSynced = self->_eventsSynced;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 24) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 4) = self->_eventsSynced;
      *(a3 + 24) |= 2u;
      return;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 20) = self->_success;
  *(a3 + 24) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
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

  *(result + 20) = self->_success;
  *(result + 24) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_eventsSynced;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (*&self->_has)
  {
    if ((*(a3 + 24) & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(a3 + 24))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(a3 + 24) & 4) != 0)
    {
      v6 = *(a3 + 20);
      if (self->_success)
      {
        if ((*(a3 + 20) & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else if (*(a3 + 20))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

LABEL_14:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 24) & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  LOBYTE(v5) = (*(a3 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 24) & 2) == 0 || self->_eventsSynced != *(a3 + 4))
    {
      goto LABEL_14;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_success;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_eventsSynced;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 24);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 24);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 2) == 0)
      {
        return;
      }

LABEL_7:
      self->_eventsSynced = *(a3 + 4);
      *&self->_has |= 2u;
      return;
    }
  }

  else if ((*(a3 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_success = *(a3 + 20);
  *&self->_has |= 4u;
  if ((*(a3 + 24) & 2) != 0)
  {
    goto LABEL_7;
  }
}

@end