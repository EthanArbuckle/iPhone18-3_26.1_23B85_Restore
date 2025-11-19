@interface AWDCoreRoutineFMCViewedInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasUiPlacement:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineFMCViewedInstance

- (void)dealloc
{
  [(AWDCoreRoutineFMCViewedInstance *)self setParkingId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineFMCViewedInstance;
  [(AWDCoreRoutineFMCViewedInstance *)&v3 dealloc];
}

- (void)setHasUiPlacement:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineFMCViewedInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineFMCViewedInstance description](&v3, sel_description), -[AWDCoreRoutineFMCViewedInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  if ((*&self->_has & 2) != 0)
  {
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

  if ((*&self->_has & 2) != 0)
  {
    uiPlacement = self->_uiPlacement;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
  }

  if (self->_parkingId)
  {
    [a3 setParkingId:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 6) = self->_uiPlacement;
    *(a3 + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_parkingId copyWithZone:a3];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_uiPlacement;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 28);
    if (has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    parkingId = self->_parkingId;
    if (parkingId | *(a3 + 2))
    {
      v5 = [(NSString *)parkingId isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(a3 + 28) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 28) & 2) == 0 || self->_uiPlacement != *(a3 + 6))
      {
        goto LABEL_14;
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
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_uiPlacement;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 28))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(AWDCoreRoutineFMCViewedInstance *)self setParkingId:?];
  }

  if ((*(a3 + 28) & 2) != 0)
  {
    self->_uiPlacement = *(a3 + 6);
    *&self->_has |= 2u;
  }
}

@end