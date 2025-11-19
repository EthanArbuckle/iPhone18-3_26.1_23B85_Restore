@interface AWDSafariParticipatedInPasswordAutoFill
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAutoFillInteractionType:(id)a3;
- (int)autoFillInteractionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAutoFillInteractionType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariParticipatedInPasswordAutoFill

- (int)autoFillInteractionType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_autoFillInteractionType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasAutoFillInteractionType:(BOOL)a3
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

- (int)StringAsAutoFillInteractionType:(id)a3
{
  if ([a3 isEqualToString:@"TAPPED_PASSWORDS_BUTTON_ON_QUICKTYPE_BAR"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"TAPPED_OTHER_PASSWORDS_OPTION"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"FOCUSED_PASSWORD_FIELD"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"EDITED_TEXT_IN_PASSWORD_FIELD"])
  {
    return 3;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSafariParticipatedInPasswordAutoFill;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariParticipatedInPasswordAutoFill description](&v3, sel_description), -[AWDSafariParticipatedInPasswordAutoFill dictionaryRepresentation](self, "dictionaryRepresentation")];
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
    autoFillInteractionType = self->_autoFillInteractionType;
    if (autoFillInteractionType >= 4)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_autoFillInteractionType];
    }

    else
    {
      v6 = off_29EE32D60[autoFillInteractionType];
    }

    [v3 setObject:v6 forKey:@"autoFillInteractionType"];
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
    autoFillInteractionType = self->_autoFillInteractionType;

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
    *(a3 + 4) = self->_autoFillInteractionType;
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
    *(result + 4) = self->_autoFillInteractionType;
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
      if ((*(a3 + 20) & 2) == 0 || self->_autoFillInteractionType != *(a3 + 4))
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
  v3 = 2654435761 * self->_autoFillInteractionType;
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
    self->_autoFillInteractionType = *(a3 + 4);
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