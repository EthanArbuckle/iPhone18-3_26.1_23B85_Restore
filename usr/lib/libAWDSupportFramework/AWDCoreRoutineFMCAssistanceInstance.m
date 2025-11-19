@interface AWDCoreRoutineFMCAssistanceInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAssistanceType:(BOOL)a3;
- (void)setHasAssistanceValue:(BOOL)a3;
- (void)setHasUiPlacement:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineFMCAssistanceInstance

- (void)dealloc
{
  [(AWDCoreRoutineFMCAssistanceInstance *)self setParkingId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineFMCAssistanceInstance;
  [(AWDCoreRoutineFMCAssistanceInstance *)&v3 dealloc];
}

- (void)setHasAssistanceType:(BOOL)a3
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

- (void)setHasAssistanceValue:(BOOL)a3
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

- (void)setHasUiPlacement:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineFMCAssistanceInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineFMCAssistanceInstance description](&v3, sel_description), -[AWDCoreRoutineFMCAssistanceInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  parkingId = self->_parkingId;
  if (parkingId)
  {
    [v3 setObject:parkingId forKey:@"parkingId"];
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_assistanceValue), @"assistanceValue"}];
    if ((*&self->_has & 8) == 0)
    {
      return v3;
    }

    goto LABEL_8;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_assistanceType), @"assistanceType"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((has & 8) != 0)
  {
LABEL_8:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_uiPlacement), @"uiPlacement"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_parkingId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    assistanceValue = self->_assistanceValue;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

  assistanceType = self->_assistanceType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_11:
  uiPlacement = self->_uiPlacement;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 36) |= 1u;
  }

  if (self->_parkingId)
  {
    [a3 setParkingId:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_assistanceType;
    *(a3 + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(a3 + 5) = self->_assistanceValue;
  *(a3 + 36) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return;
  }

LABEL_8:
  *(a3 + 8) = self->_uiPlacement;
  *(a3 + 36) |= 8u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_parkingId copyWithZone:a3];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 20) = self->_assistanceValue;
    *(v6 + 36) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 16) = self->_assistanceType;
  *(v6 + 36) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 8) != 0)
  {
LABEL_6:
    *(v6 + 32) = self->_uiPlacement;
    *(v6 + 36) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 36);
    if (has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(a3 + 36))
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    parkingId = self->_parkingId;
    if (parkingId | *(a3 + 3))
    {
      v5 = [(NSString *)parkingId isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_assistanceType != *(a3 + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 36) & 2) != 0)
    {
      goto LABEL_24;
    }

    if ((has & 4) != 0)
    {
      if ((*(a3 + 36) & 4) == 0 || self->_assistanceValue != *(a3 + 5))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 36) & 4) != 0)
    {
      goto LABEL_24;
    }

    LOBYTE(v5) = (*(a3 + 36) & 8) == 0;
    if ((has & 8) != 0)
    {
      if ((*(a3 + 36) & 8) == 0 || self->_uiPlacement != *(a3 + 8))
      {
        goto LABEL_24;
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
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_parkingId hash];
  if ((*&self->_has & 2) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761 * self->_assistanceType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v6 = 2654435761 * self->_assistanceValue;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v7 = 2654435761 * self->_uiPlacement;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 36))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDCoreRoutineFMCAssistanceInstance *)self setParkingId:?];
  }

  v5 = *(a3 + 36);
  if ((v5 & 2) != 0)
  {
    self->_assistanceType = *(a3 + 4);
    *&self->_has |= 2u;
    v5 = *(a3 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a3 + 36) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_assistanceValue = *(a3 + 5);
  *&self->_has |= 4u;
  if ((*(a3 + 36) & 8) == 0)
  {
    return;
  }

LABEL_8:
  self->_uiPlacement = *(a3 + 8);
  *&self->_has |= 8u;
}

@end