@interface RMSControlInterfaceMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSupportsSpeakerSelection:(BOOL)a3;
- (void)setHasSupportsVolumeControl:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RMSControlInterfaceMessage

- (void)setHasSupportsSpeakerSelection:(BOOL)a3
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

- (void)setHasSupportsVolumeControl:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSControlInterfaceMessage;
  v4 = [(RMSControlInterfaceMessage *)&v8 description];
  v5 = [(RMSControlInterfaceMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsSpeakerSelection];
    [v3 setObject:v7 forKey:@"supportsSpeakerSelection"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsVolumeControl];
  [v3 setObject:v8 forKey:@"supportsVolumeControl"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsDirectionalControl];
    [v3 setObject:v5 forKey:@"supportsDirectionalControl"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  PBDataWriterWriteBOOLField();
  v4 = v6;
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[9] = self->_supportsSpeakerSelection;
    v4[12] |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  v4[10] = self->_supportsVolumeControl;
  v4[12] |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v4[8] = self->_supportsDirectionalControl;
    v4[12] |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 9) = self->_supportsSpeakerSelection;
    *(result + 12) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
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

  *(result + 10) = self->_supportsVolumeControl;
  *(result + 12) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 8) = self->_supportsDirectionalControl;
  *(result + 12) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((v4[12] & 2) == 0)
    {
      goto LABEL_24;
    }

    if (self->_supportsSpeakerSelection)
    {
      if ((v4[9] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v4[9])
    {
      goto LABEL_24;
    }
  }

  else if ((v4[12] & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((v4[12] & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  if ((v4[12] & 4) == 0)
  {
    goto LABEL_24;
  }

  if (self->_supportsVolumeControl)
  {
    if ((v4[10] & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v4[10])
  {
    goto LABEL_24;
  }

LABEL_6:
  v5 = (v4[12] & 1) == 0;
  if (*&self->_has)
  {
    if (v4[12])
    {
      if (self->_supportsDirectionalControl)
      {
        if (v4[8])
        {
          goto LABEL_26;
        }
      }

      else if (!v4[8])
      {
LABEL_26:
        v5 = 1;
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_supportsSpeakerSelection;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_supportsVolumeControl;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_supportsDirectionalControl;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[12];
  if ((v5 & 2) != 0)
  {
    self->_supportsSpeakerSelection = v4[9];
    *&self->_has |= 2u;
    v5 = v4[12];
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if (!v5)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4[12] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_supportsVolumeControl = v4[10];
  *&self->_has |= 4u;
  if (v4[12])
  {
LABEL_4:
    self->_supportsDirectionalControl = v4[8];
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end