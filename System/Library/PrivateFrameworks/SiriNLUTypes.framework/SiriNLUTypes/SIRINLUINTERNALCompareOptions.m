@interface SIRINLUINTERNALCompareOptions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDiacriticInsensitive:(BOOL)a3;
- (void)setHasWidthInsensitive:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALCompareOptions

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[12];
  if (v5)
  {
    self->_caseInsensitive = v4[8];
    *&self->_has |= 1u;
    v5 = v4[12];
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

  else if ((v4[12] & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_diacriticInsensitive = v4[9];
  *&self->_has |= 2u;
  if ((v4[12] & 4) != 0)
  {
LABEL_4:
    self->_widthInsensitive = v4[10];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((v4[12] & 1) == 0)
    {
      goto LABEL_24;
    }

    v6 = v4[8];
    if (self->_caseInsensitive)
    {
      if ((v4[8] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v4[8])
    {
      goto LABEL_24;
    }
  }

  else if (v4[12])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((v4[12] & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  if ((v4[12] & 2) == 0)
  {
    goto LABEL_24;
  }

  v7 = v4[9];
  if (self->_diacriticInsensitive)
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

LABEL_6:
  v5 = (v4[12] & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((v4[12] & 4) != 0)
    {
      if (self->_widthInsensitive)
      {
        if (v4[10])
        {
          goto LABEL_26;
        }
      }

      else if (!v4[10])
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[8] = self->_caseInsensitive;
    v4[12] |= 1u;
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

  v4[9] = self->_diacriticInsensitive;
  v4[12] |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[10] = self->_widthInsensitive;
    v4[12] |= 4u;
  }

LABEL_5:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    caseInsensitive = self->_caseInsensitive;
    PBDataWriterWriteBOOLField();
    v4 = v9;
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
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    widthInsensitive = self->_widthInsensitive;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_5:
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_caseInsensitive];
    [v3 setObject:v7 forKey:@"case_insensitive"];

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
  [v3 setObject:v8 forKey:@"diacritic_insensitive"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_widthInsensitive];
    [v3 setObject:v5 forKey:@"width_insensitive"];
  }

LABEL_5:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALCompareOptions;
  v4 = [(SIRINLUINTERNALCompareOptions *)&v8 description];
  v5 = [(SIRINLUINTERNALCompareOptions *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasWidthInsensitive:(BOOL)a3
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

- (void)setHasDiacriticInsensitive:(BOOL)a3
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

@end