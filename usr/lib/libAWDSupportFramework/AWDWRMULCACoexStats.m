@interface AWDWRMULCACoexStats
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasULCACriCarDLBW:(BOOL)a3;
- (void)setHasULCACriCarDLFreq:(BOOL)a3;
- (void)setHasULCACriCarULBW:(BOOL)a3;
- (void)setHasULCACriCarULFreq:(BOOL)a3;
- (void)setHasULCAHasCoexBand:(BOOL)a3;
- (void)setHasULCAPriCarDLBW:(BOOL)a3;
- (void)setHasULCAPriCarDLFreq:(BOOL)a3;
- (void)setHasULCAPriCarULBW:(BOOL)a3;
- (void)setHasULCAPriCarULFreq:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWRMULCACoexStats

- (void)setHasULCAHasCoexBand:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasULCAPriCarULFreq:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasULCAPriCarDLFreq:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasULCAPriCarULBW:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasULCAPriCarDLBW:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasULCACriCarULFreq:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasULCACriCarDLFreq:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasULCACriCarULBW:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasULCACriCarDLBW:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMULCACoexStats;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMULCACoexStats description](&v3, sel_description), -[AWDWRMULCACoexStats dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_uLCAHasCoexBand), @"ULCAHasCoexBand"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uLCAPriCarULFreq), @"ULCAPriCarULFreq"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uLCAPriCarDLFreq), @"ULCAPriCarDLFreq"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uLCAPriCarULBW), @"ULCAPriCarULBW"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uLCAPriCarDLBW), @"ULCAPriCarDLBW"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uLCACriCarULFreq), @"ULCACriCarULFreq"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uLCACriCarULBW), @"ULCACriCarULBW"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

LABEL_20:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uLCACriCarDLFreq), @"ULCACriCarDLFreq"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 2) != 0)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_uLCACriCarDLBW), @"ULCACriCarDLBW"}];
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
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  uLCAHasCoexBand = self->_uLCAHasCoexBand;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  uLCAPriCarULFreq = self->_uLCAPriCarULFreq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  uLCAPriCarDLFreq = self->_uLCAPriCarDLFreq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  uLCAPriCarULBW = self->_uLCAPriCarULBW;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  uLCAPriCarDLBW = self->_uLCAPriCarDLBW;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  uLCACriCarULFreq = self->_uLCACriCarULFreq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    uLCACriCarULBW = self->_uLCACriCarULBW;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_19:
  uLCACriCarDLFreq = self->_uLCACriCarDLFreq;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_21:
  uLCACriCarDLBW = self->_uLCACriCarDLBW;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 26) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 48) = self->_uLCAHasCoexBand;
  *(a3 + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(a3 + 11) = self->_uLCAPriCarULFreq;
  *(a3 + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(a3 + 9) = self->_uLCAPriCarDLFreq;
  *(a3 + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(a3 + 10) = self->_uLCAPriCarULBW;
  *(a3 + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(a3 + 8) = self->_uLCAPriCarDLBW;
  *(a3 + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(a3 + 7) = self->_uLCACriCarULFreq;
  *(a3 + 26) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(a3 + 5) = self->_uLCACriCarDLFreq;
  *(a3 + 26) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_21:
    *(a3 + 4) = self->_uLCACriCarDLBW;
    *(a3 + 26) |= 2u;
    return;
  }

LABEL_20:
  *(a3 + 6) = self->_uLCACriCarULBW;
  *(a3 + 26) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_21;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 26) |= 1u;
    has = self->_has;
    if ((has & 0x200) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(result + 48) = self->_uLCAHasCoexBand;
  *(result + 26) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 11) = self->_uLCAPriCarULFreq;
  *(result + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 9) = self->_uLCAPriCarDLFreq;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 10) = self->_uLCAPriCarULBW;
  *(result + 26) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 8) = self->_uLCAPriCarDLBW;
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 7) = self->_uLCACriCarULFreq;
  *(result + 26) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 5) = self->_uLCACriCarDLFreq;
  *(result + 26) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 6) = self->_uLCACriCarULBW;
  *(result + 26) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 4) = self->_uLCACriCarDLBW;
  *(result + 26) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 26);
  if (has)
  {
    if ((v7 & 1) == 0 || self->_timestamp != *(a3 + 1))
    {
      goto LABEL_54;
    }
  }

  else if (v7)
  {
    goto LABEL_54;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(a3 + 26) & 0x200) != 0)
    {
      v8 = *(a3 + 48);
      if (self->_uLCAHasCoexBand)
      {
        if ((*(a3 + 48) & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if (*(a3 + 48))
      {
        goto LABEL_54;
      }

      goto LABEL_9;
    }

LABEL_54:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 26) & 0x200) != 0)
  {
    goto LABEL_54;
  }

LABEL_9:
  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 26) & 0x100) == 0 || self->_uLCAPriCarULFreq != *(a3 + 11))
    {
      goto LABEL_54;
    }
  }

  else if ((*(a3 + 26) & 0x100) != 0)
  {
    goto LABEL_54;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_uLCAPriCarDLFreq != *(a3 + 9))
    {
      goto LABEL_54;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_54;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_uLCAPriCarULBW != *(a3 + 10))
    {
      goto LABEL_54;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_54;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_uLCAPriCarDLBW != *(a3 + 8))
    {
      goto LABEL_54;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_54;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_uLCACriCarULFreq != *(a3 + 7))
    {
      goto LABEL_54;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_54;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_uLCACriCarDLFreq != *(a3 + 5))
    {
      goto LABEL_54;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_54;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_uLCACriCarULBW != *(a3 + 6))
    {
      goto LABEL_54;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_54;
  }

  LOBYTE(v5) = (v7 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_uLCACriCarDLBW != *(a3 + 4))
    {
      goto LABEL_54;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_uLCAHasCoexBand;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_uLCAPriCarULFreq;
    if ((has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_uLCAPriCarDLFreq;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_uLCAPriCarULBW;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_uLCAPriCarDLBW;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_uLCACriCarULFreq;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_uLCACriCarDLFreq;
    if ((has & 8) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_uLCACriCarULBW;
  if ((has & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_uLCACriCarDLBW;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 26);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 26);
    if ((v3 & 0x200) == 0)
    {
LABEL_3:
      if ((v3 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a3 + 26) & 0x200) == 0)
  {
    goto LABEL_3;
  }

  self->_uLCAHasCoexBand = *(a3 + 48);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 26);
  if ((v3 & 0x100) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_uLCAPriCarULFreq = *(a3 + 11);
  *&self->_has |= 0x100u;
  v3 = *(a3 + 26);
  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_uLCAPriCarDLFreq = *(a3 + 9);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 26);
  if ((v3 & 0x80) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_uLCAPriCarULBW = *(a3 + 10);
  *&self->_has |= 0x80u;
  v3 = *(a3 + 26);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_uLCAPriCarDLBW = *(a3 + 8);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 26);
  if ((v3 & 0x10) == 0)
  {
LABEL_8:
    if ((v3 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_uLCACriCarULFreq = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 26);
  if ((v3 & 4) == 0)
  {
LABEL_9:
    if ((v3 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_uLCACriCarDLFreq = *(a3 + 5);
  *&self->_has |= 4u;
  v3 = *(a3 + 26);
  if ((v3 & 8) == 0)
  {
LABEL_10:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_21:
    self->_uLCACriCarDLBW = *(a3 + 4);
    *&self->_has |= 2u;
    return;
  }

LABEL_20:
  self->_uLCACriCarULBW = *(a3 + 6);
  *&self->_has |= 8u;
  if ((*(a3 + 26) & 2) != 0)
  {
    goto LABEL_21;
  }
}

@end