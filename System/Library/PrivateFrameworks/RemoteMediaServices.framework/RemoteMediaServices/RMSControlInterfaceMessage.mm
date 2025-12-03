@interface RMSControlInterfaceMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSupportsSpeakerSelection:(BOOL)selection;
- (void)setHasSupportsVolumeControl:(BOOL)control;
- (void)writeTo:(id)to;
@end

@implementation RMSControlInterfaceMessage

- (void)setHasSupportsSpeakerSelection:(BOOL)selection
{
  if (selection)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSupportsVolumeControl:(BOOL)control
{
  if (control)
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
  dictionaryRepresentation = [(RMSControlInterfaceMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsSpeakerSelection];
    [dictionary setObject:v7 forKey:@"supportsSpeakerSelection"];

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
  [dictionary setObject:v8 forKey:@"supportsVolumeControl"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsDirectionalControl];
    [dictionary setObject:v5 forKey:@"supportsDirectionalControl"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
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
  toCopy = v6;
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[9] = self->_supportsSpeakerSelection;
    toCopy[12] |= 2u;
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

  toCopy[10] = self->_supportsVolumeControl;
  toCopy[12] |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    toCopy[8] = self->_supportsDirectionalControl;
    toCopy[12] |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[12] & 2) == 0)
    {
      goto LABEL_24;
    }

    if (self->_supportsSpeakerSelection)
    {
      if ((equalCopy[9] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (equalCopy[9])
    {
      goto LABEL_24;
    }
  }

  else if ((equalCopy[12] & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((equalCopy[12] & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  if ((equalCopy[12] & 4) == 0)
  {
    goto LABEL_24;
  }

  if (self->_supportsVolumeControl)
  {
    if ((equalCopy[10] & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (equalCopy[10])
  {
    goto LABEL_24;
  }

LABEL_6:
  v5 = (equalCopy[12] & 1) == 0;
  if (*&self->_has)
  {
    if (equalCopy[12])
    {
      if (self->_supportsDirectionalControl)
      {
        if (equalCopy[8])
        {
          goto LABEL_26;
        }
      }

      else if (!equalCopy[8])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if ((v5 & 2) != 0)
  {
    self->_supportsSpeakerSelection = fromCopy[9];
    *&self->_has |= 2u;
    v5 = fromCopy[12];
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

  else if ((fromCopy[12] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_supportsVolumeControl = fromCopy[10];
  *&self->_has |= 4u;
  if (fromCopy[12])
  {
LABEL_4:
    self->_supportsDirectionalControl = fromCopy[8];
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end