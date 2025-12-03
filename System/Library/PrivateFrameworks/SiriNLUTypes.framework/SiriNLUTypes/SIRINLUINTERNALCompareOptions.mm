@interface SIRINLUINTERNALCompareOptions
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDiacriticInsensitive:(BOOL)insensitive;
- (void)setHasWidthInsensitive:(BOOL)insensitive;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALCompareOptions

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if (v5)
  {
    self->_caseInsensitive = fromCopy[8];
    *&self->_has |= 1u;
    v5 = fromCopy[12];
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((fromCopy[12] & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_diacriticInsensitive = fromCopy[9];
  *&self->_has |= 2u;
  if ((fromCopy[12] & 4) != 0)
  {
LABEL_4:
    self->_widthInsensitive = fromCopy[10];
    *&self->_has |= 4u;
  }

LABEL_5:
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_caseInsensitive;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_diacriticInsensitive;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_widthInsensitive;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((equalCopy[12] & 1) == 0)
    {
      goto LABEL_24;
    }

    v6 = equalCopy[8];
    if (self->_caseInsensitive)
    {
      if ((equalCopy[8] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (equalCopy[8])
    {
      goto LABEL_24;
    }
  }

  else if (equalCopy[12])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((equalCopy[12] & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  if ((equalCopy[12] & 2) == 0)
  {
    goto LABEL_24;
  }

  v7 = equalCopy[9];
  if (self->_diacriticInsensitive)
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

LABEL_6:
  v5 = (equalCopy[12] & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[12] & 4) != 0)
    {
      if (self->_widthInsensitive)
      {
        if (equalCopy[10])
        {
          goto LABEL_26;
        }
      }

      else if (!equalCopy[10])
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

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 8) = self->_caseInsensitive;
    *(result + 12) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_diacriticInsensitive;
  *(result + 12) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 10) = self->_widthInsensitive;
  *(result + 12) |= 4u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[8] = self->_caseInsensitive;
    toCopy[12] |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  toCopy[9] = self->_diacriticInsensitive;
  toCopy[12] |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[10] = self->_widthInsensitive;
    toCopy[12] |= 4u;
  }

LABEL_5:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    caseInsensitive = self->_caseInsensitive;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  diacriticInsensitive = self->_diacriticInsensitive;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    widthInsensitive = self->_widthInsensitive;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_caseInsensitive];
    [dictionary setObject:v7 forKey:@"case_insensitive"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_diacriticInsensitive];
  [dictionary setObject:v8 forKey:@"diacritic_insensitive"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_widthInsensitive];
    [dictionary setObject:v5 forKey:@"width_insensitive"];
  }

LABEL_5:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCompareOptions;
  v4 = [(SIRINLUINTERNALCompareOptions *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALCompareOptions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasWidthInsensitive:(BOOL)insensitive
{
  if (insensitive)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDiacriticInsensitive:(BOOL)insensitive
{
  if (insensitive)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end